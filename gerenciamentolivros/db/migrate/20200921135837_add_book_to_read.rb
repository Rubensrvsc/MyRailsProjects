class AddBookToRead < ActiveRecord::Migration[6.0]
  def change
    add_reference :reads, :book, null: false, foreign_key: true
  end
end
