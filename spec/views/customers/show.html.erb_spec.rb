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

    @addresses = assign(:addresses, [
      Address.create!(
        :label => "Label",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :country => "Country",
        :customer => @customer
      ),
      Address.create!(
        :label => "Label",
        :address_1 => "Address 1",
        :address_2 => "Address 2",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :country => "Country",
        :customer => @customer
      )
    ])
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


    expect(rendered).to match(/Label/)
    expect(rendered).to match(/Address 1/)
    expect(rendered).to match(/Address 2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Country/)
  end
end
