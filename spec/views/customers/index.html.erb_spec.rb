require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :title => 'Mr',
        :first_name => 'Barack',
        :last_name => 'Obama',
        :email => 'barack@whitehouse.gov',
        :organization => 'Government',
        :position => 'President',
        :cell_phone => '6238155363',
      ),
      Customer.create!(
        :title => 'Mr',
        :first_name => 'Barack',
        :last_name => 'Obama',
        :organization => 'Government',
        :position => 'President',
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => "Mr".to_s, :count => 2
    assert_select "tr>td", :text => "Barack".to_s, :count => 2
    assert_select "tr>td", :text => "Obama".to_s, :count => 2
    assert_select "tr>td", :text => "Government".to_s, :count => 2
    assert_select "tr>td", :text => "President".to_s, :count => 2
  end
end
