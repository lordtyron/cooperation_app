require 'spec_helper'

describe "users/edit.html.erb" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "MyString",
      :email => "MyString",
      :position => "MyString",
      :division => "MyString",
      :account_no => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_name", :name => "user[name]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_position", :name => "user[position]"
      assert_select "input#user_division", :name => "user[division]"
      assert_select "input#user_account_no", :name => "user[account_no]"
    end
  end
end
