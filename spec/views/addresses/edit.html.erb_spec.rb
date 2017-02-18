require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
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
      :label => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :country => "MyString",
      :customer => @customer
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input#address_label[name=?]", "address[label]"

      assert_select "input#address_address_1[name=?]", "address[address_1]"

      assert_select "input#address_address_2[name=?]", "address[address_2]"

      assert_select "input#address_city[name=?]", "address[city]"

      assert_select "input#address_state[name=?]", "address[state]"

      assert_select "input#address_zip[name=?]", "address[zip]"

      assert_select "input#address_country[name=?]", "address[country]"

      assert_select "input#address_customer_id[name=?]", "address[customer_id]"
    end
  end
end
