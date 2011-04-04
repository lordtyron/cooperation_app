require 'spec_helper'

describe "rates/new.html.erb" do
  before(:each) do
    assign(:rate, stub_model(Rate,
      :kind => "MyString",
      :position => "MyString",
      :percent => 1.5
    ).as_new_record)
  end

  it "renders new rate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rates_path, :method => "post" do
      assert_select "input#rate_kind", :name => "rate[kind]"
      assert_select "input#rate_position", :name => "rate[position]"
      assert_select "input#rate_percent", :name => "rate[percent]"
    end
  end
end
