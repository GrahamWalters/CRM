require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :title => "Title",
      :first_name => "First Name",
      :middle_name => "Middle Name",
      :last_name => "Last Name",
      :email => "Email",
      :organization => "Organization",
      :position => "Position",
      :cell_phone => "Cell Phone",
      :work_phone => "Work Phone",
      :home_phone => "Home Phone",
      :fax => "Fax"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Middle Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Organization/)
    expect(rendered).to match(/Position/)
    expect(rendered).to match(/Cell Phone/)
    expect(rendered).to match(/Work Phone/)
    expect(rendered).to match(/Home Phone/)
    expect(rendered).to match(/Fax/)
  end
end
