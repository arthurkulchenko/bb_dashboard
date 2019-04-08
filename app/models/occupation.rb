# frozen_string_literal: true

class Occupation < ApplicationRecord
  belongs_to :employee
  has_paper_trail
  validates :reason, :from, :to, presence: true

  enum reason: %i[vacation illness day_off assignment]

  def self.prepare
    pluck(:reason, :to).map { |e| "#{e[0]} till #{e[1].strftime('%B %d')} " }.join('/')
  end
end
