require 'rails_helper'

RSpec.describe "addresses/new", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :title => "Mr",
      :first_name => "Barack",
      :last_name => "Obama"
    ))
    assign(:address, Address.new(
      :label => "Home",
      :address_1 => "The White House",
      :address_2 => "1600 Pennsylvania Avenue NW",
      :city => "Washington",
      :state => "DC",
      :zip => "20500",
      :country => "USA",
      :customer => @customer
    ))
  end

  it "renders new address form" do
    render

    assert_select "form[action=?][method=?]", customer_addresses_path(@customer), "post" do

      assert_select "input#address_label[name=?]", "address[label]"

      assert_select "input#address_address_1[name=?]", "address[address_1]"

      assert_select "input#address_address_2[name=?]", "address[address_2]"

      assert_select "input#address_city[name=?]", "address[city]"

      assert_select "select#address_state[name=?]", "address[state]"

      assert_select "input#address_zip[name=?]", "address[zip]"

      assert_select "input#address_country[name=?]", "address[country]"
    end
  end
end
