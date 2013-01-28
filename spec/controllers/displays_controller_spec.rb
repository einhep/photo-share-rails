require 'spec_helper'

describe DisplaysController do

	def valid_attributes
		{'title' => 'MyTitle'}
	end

	def valid_session

	end

  describe 'GET #images' do
  	it 'populates an array of images' do
  		display = Display.create! valid_attributes
  		get :show, {:id => display}, valid_session
  		assigns(:images).should eq([display.images])
  	end
  	it 'renders the :images view'
  end
end