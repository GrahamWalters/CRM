require "rails_helper"

RSpec.describe AddressesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/customers/1/addresses").to route_to("addresses#index", :customer_id => "1")
    end

    it "routes to #new" do
      expect(:get => "/customers/1/addresses/new").to route_to("addresses#new", :customer_id => "1")
    end

    it "routes to #show" do
      expect(:get => "/customers/1/addresses/1").to route_to("addresses#show", :id => "1", :customer_id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/customers/1/addresses/1/edit").to route_to("addresses#edit", :id => "1", :customer_id => "1")
    end

    it "routes to #create" do
      expect(:post => "/customers/1/addresses").to route_to("addresses#create", :customer_id => "1")
    end

    it "routes to #update via PUT" do
      expect(:put => "/customers/1/addresses/1").to route_to("addresses#update", :id => "1", :customer_id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/customers/1/addresses/1").to route_to("addresses#update", :id => "1", :customer_id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/customers/1/addresses/1").to route_to("addresses#destroy", :id => "1", :customer_id => "1")
    end

  end
end
