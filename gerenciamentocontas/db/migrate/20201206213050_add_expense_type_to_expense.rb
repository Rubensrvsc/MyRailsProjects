class AddExpenseTypeToExpense < ActiveRecord::Migration[6.0]
  def change
    add_reference :expenses, :expensetype, null: false, foreign_key: true
  end
end
