require 'spec_helper'

describe DisplaysController do

	def valid_attributes
		{'title' => 'MyTitle'}
	end

	def valid_session

	end

  # This should return the minimal set of attributes required to create a valid
  # Display. As you add validations to Display, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "title" => "MyTitle" }
  end

  def valid_displays
    [{ "title" => "Title1"}, { "title" => "Title2"}]
  end

  describe "GET index" do
    it "assigns all displays as @displays" do
      display = Display.create! valid_displays
      get :index, {}, valid_session
      assigns(@displays).should eq(valid_displays)
    end
  end

  describe "GET show" do
    it "assigns the requested display as @displays" do
      display = Display.create! valid_attributes
      get :show, {:id => display.to_param}, valid_session
      assigns(:display).should eq(display)
    end
  end

  describe "GET new" do
    it "assigns a new display as @display" do
      get :new, {}, valid_session
      assigns(:display).should be_a_new(Display)
    end
  end

  describe "GET edit" do
    it "assigns the requested display as @display" do
      display  = Display.create! valid_attributes
      get :edit, {:id => display.to_param}, valid_session
      assigns(:display).should eq(display)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Display" do
        expect {
          post :create, {:display => valid_attributes}, valid_session
        }.to change(Display, :count).by(1)
      end

      it "assigns a newly created display as @display" do
        post :create, {:display => valid_attributes}, valid_session
        assigns(:display).should be_a(Display)
        assigns(:display).should be_persisted
      end

      it "redirects to the created display" do
        post :create, {:display => valid_attributes}, valid_session
        response.should redirect_to(Display.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved display as @display" do
        # Trigger the behavior that occurs when invalid params are submitted
        Display.any_instance.stub(:save).and_return(false)
        post :create, {:display => { "session_id" => "invalid value" }}, valid_session
        assigns(:display).should be_a_new(Display)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Display.any_instance.stub(:save).and_return(false)
        post :create, {:display => { "session_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested display" do
        display = Display.create! valid_attributes
        # Assuming there are no other displays in the database, this
        # specifies that the Display created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Display.any_instance.should_receive(:update_attributes).with({ "session_id" => "MyString" })
        put :update, {:id => display.to_param, :display => { "session_id" => "MyString" }}, valid_session
      end

      it "assigns the requested display as @display" do
        display = Display.create! valid_attributes
        put :update, {:id => display.to_param, :display => valid_attributes}, valid_session
        assigns(:display).should eq(display)
      end

      it "redirects to the display" do
        display = Display.create! valid_attributes
        put :update, {:id => display.to_param, :display => valid_attributes}, valid_session
        response.should redirect_to(display)
      end
    end

    describe "with invalid params" do
      it "assigns the display as @display" do
        display = Display.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Display.any_instance.stub(:save).and_return(false)
        put :update, {:id => display.to_param, :display => { "session_id" => "invalid value" }}, valid_session
        assigns(:display).should eq(display)
      end

      it "re-renders the 'edit' template" do
        display = Display.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Display.any_instance.stub(:save).and_return(false)
        put :update, {:id => display.to_param, :display => { "session_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested display" do
      display = Display.create! valid_attributes
      expect {
        delete :destroy, {:id => display.to_param}, valid_session
      }.to change(Display, :count).by(-1)
    end

    it "redirects to the displays list" do
      display = Display.create! valid_attributes
      delete :destroy, {:id => display.to_param}, valid_session
      response.should redirect_to(displays_url)
    end
  end
end