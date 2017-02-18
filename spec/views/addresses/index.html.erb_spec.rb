require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
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
    assign(:addresses, [
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

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "Address 1".to_s, :count => 2
    assert_select "tr>td", :text => "Address 2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => @customer.to_s, :count => 2
  end
end
