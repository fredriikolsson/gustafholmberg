# frozen_string_literal: true

module NavbarHelper
  def navbar_link(text, url)
    link_to text, url, class: 'mx-5 hover:text-gray-900'
  end
end
