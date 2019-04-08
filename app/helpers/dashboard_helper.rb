module DashboardHelper
  def self.occupation_pretty_format(employee_with_occupation_fields)
    @e = employee_with_occupation_fields
    @e.from.nil? ? "should be on work" : "#{@e.reason} till #{@e.to.strftime('%B %d')}"
  end
end
