class ProceedCsvFileWithEmployeesService
  def initialize(file)
    @file = file
  end

  def call
    # TODO: COMPARE EXISTING USER GOT FROM SLACK BY EMAIL
    EmployeeListFromCsvService.import(@file)
  end
end
