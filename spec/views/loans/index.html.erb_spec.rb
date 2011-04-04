require 'spec_helper'

describe "loans/index.html.erb" do
  before(:each) do
    assign(:loans, [
      stub_model(Loan,
        :kind => "Kind",
        :user_id => 1,
        :amount => "9.99",
        :installment => 1,
        :status => "Status"
      ),
      stub_model(Loan,
        :kind => "Kind",
        :user_id => 1,
        :amount => "9.99",
        :installment => 1,
        :status => "Status"
      )
    ])
  end

  it "renders a list of loans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Kind".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
