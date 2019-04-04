require 'rails_helper'

RSpec.describe Manager, type: :model do
  it { should belong_to :department }
  it { should validate_presence_of :full_name }
end
