require 'rails_helper'

describe Person, type: :model do
  person = Person.new(firstname: "rubens",lastname: "carvalho", email: "rubens@mail.com")
  it "valida firstname" do
    expect(person.firstname).to eq("rubens")
  end
  it "valida email" do
    expect(person.lastname).to eq("carvalho")
  end
end
