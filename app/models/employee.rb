# frozen_string_literal: true

class Employee < ApplicationRecord
  rolify
  has_one :profile
end
