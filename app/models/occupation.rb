class Occupation < ApplicationRecord
  belongs_to :employee
  has_paper_trail
end
