require 'rails_helper'

RSpec.describe Occupation, type: :model do
  %w(reason from to).each { |col| it { should validate_presence_of col } }
end
