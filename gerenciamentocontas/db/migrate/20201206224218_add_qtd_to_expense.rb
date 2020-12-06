class AddQtdToExpense < ActiveRecord::Migration[6.0]
  def change
    add_column :expenses, :qtd, :float
  end
end
