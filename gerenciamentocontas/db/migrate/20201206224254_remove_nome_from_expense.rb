class RemoveNomeFromExpense < ActiveRecord::Migration[6.0]
  def change
    remove_column :expenses, :nome, :string
  end
end
