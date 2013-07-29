Redmine::Plugin.register :redmine_macros_textile do
  name 'Redmine Macros Textile plugin'
  author 'Yukinari Toyota'
  description 'This plugin adds textile formatting macro.'
  version '0.0.1'
  url 'http://github.com/t-yuki/redmine_macros_textile'
  author_url 'http://github.com/t-yuki'
end

require 'redmine/wiki_formatting/textile/formatter'

module RedmineMacros
  module TextileMacro
    Redmine::WikiFormatting::Macros.register do
      desc 'Render textile format text.'
      macro :textile do |obj, args, text|
        formatter = Redmine::WikiFormatting::Textile::Formatter.new text
        formatter.to_html.html_safe
      end
    end
  end
end

