class RemoveQtdFromExpense < ActiveRecord::Migration[6.0]
  def change
    remove_column :expenses, :qtd, :float
  end
end
