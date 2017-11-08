require 'rails_helper'

RSpec.describe "models/new", type: :view do
  before(:each) do
    assign(:model, Model.new(
      :User => "MyString",
      :first_name => "",
      :last_name => "MyString"
    ))
  end

  it "renders new model form" do
    render

    assert_select "form[action=?][method=?]", models_path, "post" do

      assert_select "input[name=?]", "model[User]"

      assert_select "input[name=?]", "model[first_name]"

      assert_select "input[name=?]", "model[last_name]"
    end
  end
end
