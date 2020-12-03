class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.string :nome
      t.float :quantidade
      t.date :data
      t.string :comentario

      t.timestamps
    end
  end
end
