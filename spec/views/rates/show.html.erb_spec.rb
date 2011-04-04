require 'spec_helper'

describe "rates/show.html.erb" do
  before(:each) do
    @rate = assign(:rate, stub_model(Rate,
      :kind => "Kind",
      :position => "Position",
      :percent => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Kind/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Position/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
  end
end
