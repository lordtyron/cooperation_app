require 'spec_helper'

describe "rates/edit.html.erb" do
  before(:each) do
    @rate = assign(:rate, stub_model(Rate,
      :kind => "MyString",
      :position => "MyString",
      :percent => 1.5
    ))
  end

  it "renders the edit rate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rates_path(@rate), :method => "post" do
      assert_select "input#rate_kind", :name => "rate[kind]"
      assert_select "input#rate_position", :name => "rate[position]"
      assert_select "input#rate_percent", :name => "rate[percent]"
    end
  end
end
