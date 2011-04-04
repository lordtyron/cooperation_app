require 'spec_helper'

describe "users/show.html.erb" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name => "Name",
      :email => "Email",
      :position => "Position",
      :division => "Division",
      :account_no => "Account No"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Position/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Division/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Account No/)
  end
end
