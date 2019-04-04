# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Employee, type: :model do
  it { should have_one :profile }
end
