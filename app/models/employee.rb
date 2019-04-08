# frozen_string_literal: true

class Employee < ApplicationRecord
  rolify
  has_one :profile
  has_many :occupations, lambda {
                           where(
                             'occupations.from > ? AND occupations.to < ? OR
                              occupations.from < ? AND occupations.to > ? AND occupations.to < ? OR
                              occupations.from > ? AND occupations.to > ?',
                             Time.now.in_time_zone.at_beginning_of_week,
                             Time.now.in_time_zone.at_end_of_week,
                             Time.now.in_time_zone.at_beginning_of_week,
                             Time.now.in_time_zone.at_beginning_of_week,
                             Time.now.in_time_zone.at_end_of_week,
                             Time.now.in_time_zone.at_beginning_of_week,
                             Time.now.in_time_zone.at_end_of_week
                           )
                         }

  scope :with_occupations_on_this_week, lambda {
    includes(:occupations).left_outer_joins(:occupations)
    # joins(
    #   "LEFT OUTER JOIN occupations
    #      ON employees.id = occupations.employee_id
    #      WHERE
    #      occupations.from < '#{Time.now.at_beginning_of_week}'

    #      "
    # )
  }

  # def self.with_occupations_on_this_week
  #   includes(:occupations).joins(
  #     "LEFT OUTER JOIN occupations
  #        ON employees.id = occupations.employee_id
  #        WHERE
  #        occupations.from < '#{Time.now.at_beginning_of_week}'

  #        "
  #     # AND
  #     # occupations.to > '#{Time.now.at_end_of_week}'
  #     # occupations.id IS NOT NULL
  #   )
  # end
end

# .joins("LEFT OUTER JOIN occupations ON employees.id = occupations.employee_id
# WHERE occupations.from > '#{Time.now.at_beginning_of_week}' AND occupations.to < '#{Time.now.at_end_of_week}' ")
