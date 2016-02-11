module Jekyll
  #Created this so I can include Generated pages
  class SiteIncludesTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end
    def render(context)
      tmpl = File.read File.join Dir.pwd, "_site", "_includes", @text
    end
  end
end
Liquid::Template.register_tag('site_includes', Jekyll::SiteIncludesTag)