# frozen_string_literal: true

class PostPolicy < ApplicationPolicy
  def index?
    true
  end

  alias show? index?

  def create?
    user.present?
  end

  alias new? create?
  alias edit create?
  alias update? create?
  alias destroy? create?

  class Scope < Scope
    def resolve
      user.present?
    end
  end
end
