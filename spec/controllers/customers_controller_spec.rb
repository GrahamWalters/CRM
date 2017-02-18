require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe CustomersController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Customer. As you add validations to Customer, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      title: 'Mr',
      first_name: 'Barack',
      middle_name: 'Hussein',
      last_name: 'Obama',
      email: 'barack@whitehouse.gov',
      organization: 'Government',
      position: 'President',
      cell_phone: '6238155363',
      work_phone: '6317571761',
      home_phone: '8506482425',
      fax: '6102873673'
    }
  }

  let(:invalid_attributes) {
    {
      first_name: '',
      last_name: '',
      email: 'not-an-email'
    }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CustomersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all customers as @customers" do
      customer = Customer.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:customers)).to eq([customer])
    end
  end

  describe "GET #show" do
    it "assigns the requested customer as @customer" do
      customer = Customer.create! valid_attributes
      get :show, params: {id: customer.to_param}, session: valid_session
      expect(assigns(:customer)).to eq(customer)
    end
  end

  describe "GET #new" do
    it "assigns a new customer as @customer" do
      get :new, params: {}, session: valid_session
      expect(assigns(:customer)).to be_a_new(Customer)
    end
  end

  describe "GET #edit" do
    it "assigns the requested customer as @customer" do
      customer = Customer.create! valid_attributes
      get :edit, params: {id: customer.to_param}, session: valid_session
      expect(assigns(:customer)).to eq(customer)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Customer" do
        expect {
          post :create, params: {customer: valid_attributes}, session: valid_session
        }.to change(Customer, :count).by(1)
      end

      it "assigns a newly created customer as @customer" do
        post :create, params: {customer: valid_attributes}, session: valid_session
        expect(assigns(:customer)).to be_a(Customer)
        expect(assigns(:customer)).to be_persisted
      end

      it "redirects to the created customer" do
        post :create, params: {customer: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Customer.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved customer as @customer" do
        post :create, params: {customer: invalid_attributes}, session: valid_session
        expect(assigns(:customer)).to be_a_new(Customer)
      end

      it "re-renders the 'new' template" do
        post :create, params: {customer: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested customer" do
        customer = Customer.create! valid_attributes
        put :update, params: {id: customer.to_param, customer: new_attributes}, session: valid_session
        customer.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested customer as @customer" do
        customer = Customer.create! valid_attributes
        put :update, params: {id: customer.to_param, customer: valid_attributes}, session: valid_session
        expect(assigns(:customer)).to eq(customer)
      end

      it "redirects to the customer" do
        customer = Customer.create! valid_attributes
        put :update, params: {id: customer.to_param, customer: valid_attributes}, session: valid_session
        expect(response).to redirect_to(customer)
      end
    end

    context "with invalid params" do
      it "assigns the customer as @customer" do
        customer = Customer.create! valid_attributes
        put :update, params: {id: customer.to_param, customer: invalid_attributes}, session: valid_session
        expect(assigns(:customer)).to eq(customer)
      end

      it "re-renders the 'edit' template" do
        customer = Customer.create! valid_attributes
        put :update, params: {id: customer.to_param, customer: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested customer" do
      customer = Customer.create! valid_attributes
      expect {
        delete :destroy, params: {id: customer.to_param}, session: valid_session
      }.to change(Customer, :count).by(-1)
    end

    it "redirects to the customers list" do
      customer = Customer.create! valid_attributes
      delete :destroy, params: {id: customer.to_param}, session: valid_session
      expect(response).to redirect_to(customers_url)
    end
  end

end
