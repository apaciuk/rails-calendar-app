require 'rails_helper'

RSpec.describe "consultations/edit", type: :view do
  before(:each) do
    @consultation = assign(:consultation, Consultation.create!(
      title: "MyString",
      description: "MyText"
    ))
  end

  it "renders the edit consultation form" do
    render

    assert_select "form[action=?][method=?]", consultation_path(@consultation), "post" do

      assert_select "input[name=?]", "consultation[title]"

      assert_select "textarea[name=?]", "consultation[description]"
    end
  end
end
