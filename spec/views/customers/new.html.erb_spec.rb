require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      :title => 'Mr',
      :first_name => 'Barack',
      :middle_name => 'Hussein',
      :last_name => 'Obama',
      :email => 'barack@whitehouse.gov',
      :organization => 'Government',
      :position => 'President',
      :cell_phone => '6238155363',
      :work_phone => '6317571761',
      :home_phone => '8506482425',
      :fax => '6102873673'
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

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
