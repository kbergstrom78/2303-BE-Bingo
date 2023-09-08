require "rails_helper"

RSpec.describe BingoItem, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }
  end

  it "is invalid without a name" do
    item = BingoItem.new(name: nil)
    expect(item).not_to be_valid
  end
end