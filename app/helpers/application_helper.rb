# frozen_string_literal: true

module ApplicationHelper
  def show_svg(path)
    raw File.read("app/assets/images/#{path}")
  end
end
