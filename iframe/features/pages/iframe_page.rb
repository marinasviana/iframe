require_relative 'menu_section.rb'
require_relative 'name_iframe.rb'

class IframePage < SitePrism::Page
    section :menu_iframe, MenuSection, '.nav'
    iframe :name, NameIframe, '#Single > iframe:nth-child(1)'
    
end