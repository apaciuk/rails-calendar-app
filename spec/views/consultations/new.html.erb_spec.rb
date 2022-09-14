require 'rails_helper'

RSpec.describe "consultations/new", type: :view do
  before(:each) do
    assign(:consultation, Consultation.new(
      title: "MyString",
      description: "MyText"
    ))
  end

  it "renders new consultation form" do
    render

    assert_select "form[action=?][method=?]", consultations_path, "post" do

      assert_select "input[name=?]", "consultation[title]"

      assert_select "textarea[name=?]", "consultation[description]"
    end
  end
end
