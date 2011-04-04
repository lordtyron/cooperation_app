require 'spec_helper'

describe "loans/new.html.erb" do
  before(:each) do
    assign(:loan, stub_model(Loan,
      :kind => "MyString",
      :user_id => 1,
      :amount => "9.99",
      :installment => 1,
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new loan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => loans_path, :method => "post" do
      assert_select "input#loan_kind", :name => "loan[kind]"
      assert_select "input#loan_user_id", :name => "loan[user_id]"
      assert_select "input#loan_amount", :name => "loan[amount]"
      assert_select "input#loan_installment", :name => "loan[installment]"
      assert_select "input#loan_status", :name => "loan[status]"
    end
  end
end
