require 'spec_helper'

describe "view_sessions/new" do
  before(:each) do
    assign(:view_session, stub_model(ViewSession,
      :session_id => "MyString"
    ).as_new_record)
  end

  it "renders new view_session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => view_sessions_path, :method => "post" do
      assert_select "input#view_session_session_id", :name => "view_session[session_id]"
    end
  end
end
