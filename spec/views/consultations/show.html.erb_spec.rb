require 'rails_helper'

RSpec.describe "consultations/show", type: :view do
  before(:each) do
    @consultation = assign(:consultation, Consultation.create!(
      title: "Title",
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
