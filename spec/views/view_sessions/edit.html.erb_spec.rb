require 'spec_helper'

describe "view_sessions/edit" do
  before(:each) do
    @view_session = assign(:view_session, stub_model(ViewSession,
      :session_id => "MyString"
    ))
  end

  it "renders the edit view_session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => view_sessions_path(@view_session), :method => "post" do
      assert_select "input#view_session_session_id", :name => "view_session[session_id]"
    end
  end
end
