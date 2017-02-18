require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :title => "MyString",
      :first_name => "MyString",
      :middle_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :organization => "MyString",
      :position => "MyString",
      :cell_phone => "MyString",
      :work_phone => "MyString",
      :home_phone => "MyString",
      :fax => "MyString"
    ))
    @address = assign(:address, Address.create!(
      :label => "Label",
      :address_1 => "Address 1",
      :address_2 => "Address 2",
      :city => "City",
      :state => "State",
      :zip => "Zip",
      :country => "Country",
      :customer => @customer
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Label/)
    expect(rendered).to match(/Address 1/)
    expect(rendered).to match(/Address 2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(//)
  end
end
