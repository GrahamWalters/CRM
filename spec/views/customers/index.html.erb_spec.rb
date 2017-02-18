require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
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
      ),
      Customer.create!(
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
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Organization".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "Cell Phone".to_s, :count => 2
  end
end
