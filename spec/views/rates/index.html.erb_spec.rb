require 'spec_helper'

describe "rates/index.html.erb" do
  before(:each) do
    assign(:rates, [
      stub_model(Rate,
        :kind => "Kind",
        :position => "Position",
        :percent => 1.5
      ),
      stub_model(Rate,
        :kind => "Kind",
        :position => "Position",
        :percent => 1.5
      )
    ])
  end

  it "renders a list of rates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Kind".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
