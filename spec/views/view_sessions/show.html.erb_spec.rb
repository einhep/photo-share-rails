require 'spec_helper'

describe "view_sessions/show" do
  before(:each) do
    @view_session = assign(:view_session, stub_model(ViewSession,
      :session_id => "Session"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Session/)
  end
end
