class EmployeeListFromCsvService < ActiveImporter::Base
  imports Employee
  column 'full name', :full_name
end
