require 'spec_helper'

describe "view_sessions/index" do
  before(:each) do
    assign(:view_sessions, [
      stub_model(ViewSession,
        :session_id => "Session"
      ),
      stub_model(ViewSession,
        :session_id => "Session"
      )
    ])
  end

  it "renders a list of view_sessions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Session".to_s, :count => 2
  end
end
