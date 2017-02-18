require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
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

    @addresses = assign(:addresses, [
      Address.create!(
        :label => "Home",
        :address_1 => "The White House",
        :address_2 => "1600 Pennsylvania Avenue NW",
        :city => "Washington",
        :state => "DC",
        :zip => "20500",
        :country => "USA",
        :customer => @customer
      ),
      Address.create!(
        :label => "Home",
        :address_1 => "The White House",
        :address_2 => "1600 Pennsylvania Avenue NW",
        :city => "Washington",
        :state => "DC",
        :zip => "20500",
        :country => "USA",
        :customer => @customer
      )
    ])
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Mr/)
    expect(rendered).to match(/Barack/)
    expect(rendered).to match(/Hussein/)
    expect(rendered).to match(/Obama/)
    expect(rendered).to match(/barack@whitehouse.gov/)
    expect(rendered).to match(/Government/)
    expect(rendered).to match(/President/)
    expect(rendered).to match(/6238155363/)
    expect(rendered).to match(/6317571761/)
    expect(rendered).to match(/8506482425/)
    expect(rendered).to match(/6102873673/)


    expect(rendered).to match(/Home/)
    expect(rendered).to match(/The White House/)
    expect(rendered).to match(/1600 Pennsylvania Avenue NW/)
    expect(rendered).to match(/Washington/)
    expect(rendered).to match(/DC/)
    expect(rendered).to match(/20500/)
    expect(rendered).to match(/USA/)
  end
end
