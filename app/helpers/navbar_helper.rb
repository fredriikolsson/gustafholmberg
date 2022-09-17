# frozen_string_literal: true

module NavbarHelper
  def navbar_link(text, url, options = {})
    options[:class] = 'mx-5 hover:text-gray-900'
    link_to text, url, **options
  end
end
