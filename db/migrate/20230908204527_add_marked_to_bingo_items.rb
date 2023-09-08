class AddMarkedToBingoItems < ActiveRecord::Migration[7.0]
  def change
    add_column :bingo_items, :marked, :boolean
  end
end
