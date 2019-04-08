class DashboardController < ApplicationController
  def index
    @employees = Employee.with_occupations_on_this_week
  end
end
