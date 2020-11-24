class AddAccountTypeToAccount < ActiveRecord::Migration[6.0]
  def change
    add_reference :accounts, :accounttype, null: false, foreign_key: true
  end
end
