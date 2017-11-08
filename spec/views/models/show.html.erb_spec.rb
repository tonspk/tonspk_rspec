require 'rails_helper'

RSpec.describe "models/show", type: :view do
  before(:each) do
    @model = assign(:model, Model.create!(
      :User => "User",
      :first_name => "",
      :last_name => "Last Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Last Name/)
  end
end
