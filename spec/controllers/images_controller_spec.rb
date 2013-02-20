require 'spec_helper'

describe ImagesController do

	def valid_attributes
		{'title' => 'MyTitle'}
	end

	def valid_session

	end

  # This should return the minimal set of attributes required to create a valid
  # Image. As you add validations to Image, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "title" => "MyTitle" }
  end

  def valid_Images
    [{ "title" => "Title1"}, { "title" => "Title2"}]
  end

  describe "GET index" do
    it "assigns all Images as @Images" do
      Image = Image.create! valid_Images
      get :index, {}, valid_session
      assigns(@Images).should eq(valid_Images)
    end
  end

  describe "GET show" do
    it "assigns the requested Image as @Images" do
      Image = Image.create! valid_attributes
      get :show, {:id => Image.to_param}, valid_session
      assigns(:Image).should eq(Image)
    end
  end

  describe "GET new" do
    it "assigns a new Image as @Image" do
      get :new, {}, valid_session
      assigns(:Image).should be_a_new(Image)
    end
  end

  describe "GET edit" do
    it "assigns the requested Image as @Image" do
      Image  = Image.create! valid_attributes
      get :edit, {:id => Image.to_param}, valid_session
      assigns(:Image).should eq(Image)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Image" do
        expect {
          post :create, {:Image => valid_attributes}, valid_session
        }.to change(Image, :count).by(1)
      end

      it "assigns a newly created Image as @Image" do
        post :create, {:Image => valid_attributes}, valid_session
        assigns(:Image).should be_a(Image)
        assigns(:Image).should be_persisted
      end

      it "redirects to the created Image" do
        post :create, {:Image => valid_attributes}, valid_session
        response.should redirect_to(Image.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved Image as @Image" do
        # Trigger the behavior that occurs when invalid params are submitted
        Image.any_instance.stub(:save).and_return(false)
        post :create, {:Image => { "session_id" => "invalid value" }}, valid_session
        assigns(:Image).should be_a_new(Image)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Image.any_instance.stub(:save).and_return(false)
        post :create, {:Image => { "session_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested Image" do
        Image = Image.create! valid_attributes
        # Assuming there are no other Images in the database, this
        # specifies that the Image created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Image.any_instance.should_receive(:update_attributes).with({ "session_id" => "MyString" })
        put :update, {:id => Image.to_param, :Image => { "session_id" => "MyString" }}, valid_session
      end

      it "assigns the requested Image as @Image" do
        Image = Image.create! valid_attributes
        put :update, {:id => Image.to_param, :Image => valid_attributes}, valid_session
        assigns(:Image).should eq(Image)
      end

      it "redirects to the Image" do
        Image = Image.create! valid_attributes
        put :update, {:id => Image.to_param, :Image => valid_attributes}, valid_session
        response.should redirect_to(Image)
      end
    end

    describe "with invalid params" do
      it "assigns the Image as @Image" do
        Image = Image.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Image.any_instance.stub(:save).and_return(false)
        put :update, {:id => Image.to_param, :Image => { "session_id" => "invalid value" }}, valid_session
        assigns(:Image).should eq(Image)
      end

      it "re-renders the 'edit' template" do
        Image = Image.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Image.any_instance.stub(:save).and_return(false)
        put :update, {:id => Image.to_param, :Image => { "session_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested Image" do
      Image = Image.create! valid_attributes
      expect {
        delete :destroy, {:id => Image.to_param}, valid_session
      }.to change(Image, :count).by(-1)
    end

    it "redirects to the Images list" do
      Image = Image.create! valid_attributes
      delete :destroy, {:id => Image.to_param}, valid_session
      response.should redirect_to(Images_url)
    end
  end
end