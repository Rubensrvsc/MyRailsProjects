require 'rails_helper'

RSpec.describe "people/index", type: :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        firstname: "Firstname",
        lastname: "Lastname",
        email: "Email"
      ),
      Person.create!(
        firstname: "Firstname",
        lastname: "Lastname",
        email: "Email"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", text: "Firstname".to_s, count: 2
    assert_select "tr>td", text: "Lastname".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
  end
end
