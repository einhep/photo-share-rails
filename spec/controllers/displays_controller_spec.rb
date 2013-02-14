require 'spec_helper'

describe DisplaysController do

	def valid_attributes
		{'title' => 'MyTitle'}
	end

	def valid_session

	end

  # This should return the minimal set of attributes required to create a valid
  # ViewSession. As you add validations to ViewSession, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "title" => "MyTitle" }
  end

  def valid_displays
    [{ "title" => "Title1"}, { "title" => "Title2"}]
  end

  describe "GET index" do
    it "assigns all displays as @displays" do
      display = ViewSession.create! valid_displays
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
    it "assigns the requested view_session as @view_session" do
      view_session = ViewSession.create! valid_attributes
      get :edit, {:id => view_session.to_param}, valid_session
      assigns(:view_session).should eq(view_session)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ViewSession" do
        expect {
          post :create, {:view_session => valid_attributes}, valid_session
        }.to change(ViewSession, :count).by(1)
      end

      it "assigns a newly created view_session as @view_session" do
        post :create, {:view_session => valid_attributes}, valid_session
        assigns(:view_session).should be_a(ViewSession)
        assigns(:view_session).should be_persisted
      end

      it "redirects to the created view_session" do
        post :create, {:view_session => valid_attributes}, valid_session
        response.should redirect_to(ViewSession.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved view_session as @view_session" do
        # Trigger the behavior that occurs when invalid params are submitted
        ViewSession.any_instance.stub(:save).and_return(false)
        post :create, {:view_session => { "session_id" => "invalid value" }}, valid_session
        assigns(:view_session).should be_a_new(ViewSession)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ViewSession.any_instance.stub(:save).and_return(false)
        post :create, {:view_session => { "session_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested view_session" do
        view_session = ViewSession.create! valid_attributes
        # Assuming there are no other view_sessions in the database, this
        # specifies that the ViewSession created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ViewSession.any_instance.should_receive(:update_attributes).with({ "session_id" => "MyString" })
        put :update, {:id => view_session.to_param, :view_session => { "session_id" => "MyString" }}, valid_session
      end

      it "assigns the requested view_session as @view_session" do
        view_session = ViewSession.create! valid_attributes
        put :update, {:id => view_session.to_param, :view_session => valid_attributes}, valid_session
        assigns(:view_session).should eq(view_session)
      end

      it "redirects to the view_session" do
        view_session = ViewSession.create! valid_attributes
        put :update, {:id => view_session.to_param, :view_session => valid_attributes}, valid_session
        response.should redirect_to(view_session)
      end
    end

    describe "with invalid params" do
      it "assigns the view_session as @view_session" do
        view_session = ViewSession.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ViewSession.any_instance.stub(:save).and_return(false)
        put :update, {:id => view_session.to_param, :view_session => { "session_id" => "invalid value" }}, valid_session
        assigns(:view_session).should eq(view_session)
      end

      it "re-renders the 'edit' template" do
        view_session = ViewSession.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ViewSession.any_instance.stub(:save).and_return(false)
        put :update, {:id => view_session.to_param, :view_session => { "session_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested view_session" do
      view_session = ViewSession.create! valid_attributes
      expect {
        delete :destroy, {:id => view_session.to_param}, valid_session
      }.to change(ViewSession, :count).by(-1)
    end

    it "redirects to the view_sessions list" do
      view_session = ViewSession.create! valid_attributes
      delete :destroy, {:id => view_session.to_param}, valid_session
      response.should redirect_to(view_sessions_url)
    end
  end
end