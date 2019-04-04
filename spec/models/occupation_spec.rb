# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Occupation, type: :model do
  %i[reason from to].each { |col| it { should validate_presence_of col } }
end
