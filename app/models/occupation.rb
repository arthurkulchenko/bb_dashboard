# frozen_string_literal: true

class Occupation < ApplicationRecord
  belongs_to :employee
  has_paper_trail
  validates :reason, :from, :to, presence: true
end
