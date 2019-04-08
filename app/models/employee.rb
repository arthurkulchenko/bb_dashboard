# frozen_string_literal: true

class Employee < ApplicationRecord
  rolify
  has_one :profile
  has_many :occupations
  has_many :occupations_for_this_week, lambda {
    where(
      '(occupations.from BETWEEN :start_time AND :end_time) OR
       (occupations.to BETWEEN :start_time AND :end_time) OR
       (occupations.from < :start_time AND occupations.to > :end_time)',
      start_time: Time.now.in_time_zone.at_beginning_of_week,
      end_time: Time.now.in_time_zone.at_end_of_week
    )
  }, class_name: 'Occupation'

  scope :with_occupations_on_this_week, lambda {
    left_joins(:occupations_for_this_week)
    .select('employees.*, occupations.from, occupations.to, occupations.reason')
  }
end
