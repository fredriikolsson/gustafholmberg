# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PostPolicy do
  subject(:policy) { described_class }

  permissions :index?, :show? do
    it 'is permitted when logged in' do # rubocop:disable RSpec/RepeatedExample, RSpec/RepeatedDescription
      expect(policy).to permit(build(:user), build(:post))
    end

    it 'is permitted when not logged in' do
      expect(policy).to permit(nil, build(:post))
    end
  end

  permissions :new?, :create?, :update?, :edit?, :destroy? do
    it 'is permitted when logged in' do # rubocop:disable RSpec/RepeatedExample, RSpec/RepeatedDescription
      expect(policy).to permit(build(:user), build(:post))
    end

    it 'is permitted when logged in and no post' do
      expect(policy).to permit(build(:user), nil)
    end

    it 'is not permitted when not logged in' do
      expect(policy).not_to permit(nil, build(:post))
    end
  end
end
