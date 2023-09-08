require "rails_helper"

RSpec.describe "Bingo Caller" do
  before :each do
    create_list(:bingo_item, 25)
  end

  # context "when items are available" do
  #   it "returns a new bingo item on each request" do
  #     called_items = []

  #     25.times do
  #       get "/bingo/caller"
  #       resp = response
  #       data = JSON.parse(resp.body, symbolize_names: true)
  #       item = data[:item]

  #       expect(response).to have_http_status(200)
  #       expect(BingoItem.pluck(:name)).to include(item)
  #       expect(called_items).not_to include(item)  # This ensures uniqueness
  #       called_items << item
  #     end
  #   end
  # end

  # context "when all items have been called" do
  #   it "returns an appropriate message" do
  #     25.times { get "/bingo/caller" } # retrieve all items

  #     get "/bingo/caller"
  #     message = JSON.parse(response.body)["message"]

  #     expect(message).to eq("All items have been called!")
  #   end
  # end

  # context "when starting a new session" do
  #   it "resets the called items" do
  #     25.times { get "/bingo/caller" } # retrieve all items

  #     post '/set_session', params: { called_items: [] }  # Resetting the session

  #     get "/bingo/caller"
  #     item = JSON.parse(response.body)["item"]

  #     expect(response).to have_http_status(200)
  #     expect(BingoItem.pluck(:name)).to include(item)
  #   end
  # end
  it "checks the status of the /bingo/caller endpoint" do
    get "/bingo/caller"
    expect(response).to have_http_status(200)
  end

end