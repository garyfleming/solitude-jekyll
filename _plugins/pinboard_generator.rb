require 'net/http'

module PinboardPlugin

  class PinboardPage < Jekyll::Page

    # Initializes a new PinboardPage
    #
    #  +site+          is the Jekyll Site instance.
    #  +base+          is the String path to the <source>.
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

    # Get feed with username
    def json
      url     = 'http://feeds.pinboard.in/json/v1/u:' + @user
      resp    = Net::HTTP.get_response(URI.parse(url))
      return  resp.body
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
      # TODO reenable this
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
