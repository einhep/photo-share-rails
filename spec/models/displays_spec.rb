require 'spec_helper'

describe Display do
	it 'should delete images when display deleted' do
		@display = Display.create!(:title => 'MyTitle')
		@image = @display.images.create!
		image_id = @display.id
		@display.destroy
		lambda {Image.find(image_id)}.should
			raise_error(ActiveRecord::RecordNotFound)
	end
end