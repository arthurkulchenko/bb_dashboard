require 'rails_helper'

RSpec.describe Employee, type: :model do
  it { should has_on :profile }
end
