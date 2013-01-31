require 'spec_helper'

describe DisplaysController do

	def valid_attributes
		{'title' => 'MyTitle'}
	end

	def valid_session

	end

  describe 'GET #images' do
  	it 'images should be called on an instance of Display' do
  		Display.last.should_receive(:images)
  		get :show, {:id => Display.last}, valid_session
  	end

  	it 'should create an array of images' do
      
  	end
  end
end