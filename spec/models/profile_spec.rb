# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Profile, type: :model do
  it { should belong_to :employee }
end
