# frozen_string_literal: true

module ApplicationHelper
  def viewport_meta_tag
    tag.meta(name: 'viewport', content: 'width=device-width, initial-scale=1')
  end

  def show_svg(path)
    raw File.read("app/assets/images/#{path}") # rubocop:disable Rails/OutputSafety
  end
end
