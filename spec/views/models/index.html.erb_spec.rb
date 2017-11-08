require 'rails_helper'

RSpec.describe "models/index", type: :view do
  before(:each) do
    assign(:models, [
      Model.create!(
        :User => "User",
        :first_name => "",
        :last_name => "Last Name"
      ),
      Model.create!(
        :User => "User",
        :first_name => "",
        :last_name => "Last Name"
      )
    ])
  end

  it "renders a list of models" do
    render
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
  end
end
