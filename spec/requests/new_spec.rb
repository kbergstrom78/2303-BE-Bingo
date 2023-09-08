require "rails_helper"

RSpec.describe "GET bingoitem#new", type: :request do
  before :each do
    create_list(:bingo_item, 25)
  end

  it "should return a 200 status" do
    get "/bingo/new"
    expect(response).to have_http_status(200)
  end

  it "returns 25 unique bingo items" do
    get "/bingo/new"
    expect(JSON.parse(response.body).count).to eq(25)
  end

  it 'generates unique cards' do
    get "/bingo/new"
    first_card = JSON.parse(response.body)

    get "/bingo/new"
    second_card = JSON.parse(response.body)

    expect(first_card).not_to eq(second_card)
  end
end
