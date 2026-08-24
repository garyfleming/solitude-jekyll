require 'net/http'
require 'fileutils'

module PinboardPlugin

  class PinboardPage < Jekyll::Page

    # Initializes a new PinboardPage
    #
    #  +site+          is the Jekyll Site instance.
    #  +base+          is the String path to the <source>.

    CACHE_FILE = '_data/pinboard_cache.json'

    def initialize(site, base)

      #Consider making these externally configurable.
      @pinboard_layout = 'pinboard_list.html'
      @pinboard_output = 'pinboard.html'
      @limit = 10
      @user = "garyfleming"

      @site  = site
      @base  = base
      @dir   = File.join('..', '_includes')
      @name  = @pinboard_output

      self.process(name)

      template_path = File.join(base, '_layouts', @pinboard_layout)
      if File.exist?(template_path)
        @perform_render = true
        template_dir    = File.dirname(template_path)
        template        = File.basename(template_path)
        self.read_yaml(template_dir, template)
        self.data['bookmarks'] = bookmarks
      else
        @perform_render = false
      end
    end

    def render?
      @perform_render
    end

    def bookmarks
      @bookmarks = JSON.parse(json).take(@limit).map { |item| Bookmark.new(item['u'], item['d'], item['n'], item['dt'], item['a'], item['t'])}
    end

    # Try to fetch fresh Pinboard JSON; on failure fall back to cached file.
    def json
      fresh = fetch_json
      if fresh
        cache_path = File.join(@base, CACHE_FILE)
        FileUtils.mkdir_p(File.dirname(cache_path))
        File.write(cache_path, fresh)
        return fresh
      end

      cache_path = File.join(@base, CACHE_FILE)
      if File.exist?(cache_path)
        Jekyll.logger.warn "Pinboard:", "API unreachable, using cached bookmarks."
        return File.read(cache_path)
      end

      Jekyll.logger.error "Pinboard:", "API unreachable and no cache found. Returning empty list."
      '[]'
    end

    def fetch_json
      url  = 'http://feeds.pinboard.in/json/v1/u:' + @user
      uri  = URI.parse(url)
      http = Net::HTTP.new(uri.host, uri.port)
      http.open_timeout = 5
      http.read_timeout = 5
      resp = http.get(uri.request_uri)
      resp.body if resp.is_a?(Net::HTTPSuccess)
    rescue => e
      Jekyll.logger.warn "Pinboard:", "Fetch failed (#{e.class}): #{e.message}"
      nil
    end
  end

  class Bookmark

    def initialize(url, description, note, datetime, author, tags)
      @url              = url
      @description      = description
      @note             = note
      @datetime         = datetime
      @author           = author
      @tags             = tags
    end

    def to_liquid
      {
        'url' => @url,
        'description' => @description,
        'note' => @note,
        'datetime' => @datetime,
        'author' => @author,
        'tags' => @tags
      }
    end

  end


  # Jekyll hook - the generate method is called by jekyll
  class GeneratePinboard < Jekyll::Generator
    safe true
    priority :high

    def generate(site)
      if site.layouts.key? 'pinboard_list'
        pinboard = PinboardPage.new(site, site.source)
        if pinboard.render?
          pinboard.render(site.layouts, site.site_payload)
          pinboard.write(site.dest)
          site.pages << pinboard
        end
      else
        throw "No 'pinboard_list' layout found."
      end
    end

  end

end
