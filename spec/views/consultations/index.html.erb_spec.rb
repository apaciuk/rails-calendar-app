require 'rails_helper'

RSpec.describe "consultations/index", type: :view do
  before(:each) do
    assign(:consultations, [
      Consultation.create!(
        title: "Title",
        description: "MyText"
      ),
      Consultation.create!(
        title: "Title",
        description: "MyText"
      )
    ])
  end

  it "renders a list of consultations" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
