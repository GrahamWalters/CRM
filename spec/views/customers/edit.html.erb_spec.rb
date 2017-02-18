require 'rails_helper'

RSpec.describe "customers/edit", type: :view do
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
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do

      assert_select "input#customer_title[name=?]", "customer[title]"

      assert_select "input#customer_first_name[name=?]", "customer[first_name]"

      assert_select "input#customer_middle_name[name=?]", "customer[middle_name]"

      assert_select "input#customer_last_name[name=?]", "customer[last_name]"

      assert_select "input#customer_email[name=?]", "customer[email]"

      assert_select "input#customer_organization[name=?]", "customer[organization]"

      assert_select "input#customer_position[name=?]", "customer[position]"

      assert_select "input#customer_cell_phone[name=?]", "customer[cell_phone]"

      assert_select "input#customer_work_phone[name=?]", "customer[work_phone]"

      assert_select "input#customer_home_phone[name=?]", "customer[home_phone]"

      assert_select "input#customer_fax[name=?]", "customer[fax]"
    end
  end
end
