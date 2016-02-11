
module Jekyll

  class PinboardPage < Page

    # Initializes a new PinboardPage
    #
    #  +site+          is the Jekyll Site instance.
    #  +base+          is the String path to the <source>.
    def initialize(site, base)
      template_path = File.join(base, '_layouts', 'pinboard_list.html')

      @site  = site
      @base  = base
      @dir   = File.join('..', '_includes')
      @name  = 'pinboard.html'

      self.process(name)

      if File.exist?(template_path)
        @perform_render = true
        template_dir    = File.dirname(template_path)
        template        = File.basename(template_path)
        # Read the YAML data from the layout page.
        self.read_yaml(template_dir, template)
       # self.data['category']    = category
        # Set the title for this page.
        self.data['title']       = "pinboard"
        # Set the meta-description for this page.
        self.data['description'] = "pinboard"
      else
        @perform_render = false
      end
    end

    def render?
      @perform_render
    end

  end

  # The Site class is a built-in Jekyll class with access to global site config information.
  class Site

    def write_pinboard
      if self.layouts.key? 'pinboard_list'
        pinboard = PinboardPage.new(self, self.source)
        if pinboard.render?
          pinboard.render(self.layouts, site_payload)
          pinboard.write(self.dest)
          # Record the fact that this pages has been added, otherwise Site::cleanup will remove it.
          self.pages << pinboard
        end
      # Throw an exception if the layout couldn't be found.
      else
        throw "No 'pinboard_list' layout found."
      end
    end

  end

  # Jekyll hook - the generate method is called by jekyll
  class GeneratePinboard < Generator
    safe true
    priority :high


    def generate(site)
      site.write_pinboard
    end

    def write_pinboard(site)
      pinboard = PinboardPage.new(site, site.source)
      # if pinboard.render?
        pinboard.render(site.layouts, site_payload)
        pinboard.write(site.dest)
        # Record the fact that this pages has been added, otherwise Site::cleanup will remove it.
        site.pages << pinboard
      # end
    end

  end



end