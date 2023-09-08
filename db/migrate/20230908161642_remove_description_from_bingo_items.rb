class RemoveDescriptionFromBingoItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :bingo_items, :description, :text
  end
end
