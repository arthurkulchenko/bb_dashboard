module DashboardHelper
  def self.occupation_pretty_format(employee_with_occupation_fields)
    if employee_with_occupation_fields.from.nil?
      "should be on work"
    else
      employee_with_occupation_fields.to
    end
  end
end
