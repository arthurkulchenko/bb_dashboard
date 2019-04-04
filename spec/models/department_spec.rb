require 'rails_helper'

RSpec.describe Department, type: :model do
  %w(ceo city).each { |col| it { should validate_presence_of col } }
  %w(employees managers).each { |entity| it { should have_many entity } }
end
