feature 'check dashboard', %q(
  In order to figure out where is someone
  As common guest
  I want to be able see a table of employees
) do

  given!(:employees){ create_list(:employee, 3) }

  background { visit dashboard_path }

  scenario 'employee table shows up' do
    employees.each{ |e| expect(page).to have_content e.full_name }
  end
end
