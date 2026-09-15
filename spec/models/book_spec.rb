require "rails_helper"

RSpec.describe Book, type: :model do
  it "uses the seeded test database" do
    expect(Book.count).to be >= 5
    expect(Book.exists?(title: "test book")).to be true
  end
end