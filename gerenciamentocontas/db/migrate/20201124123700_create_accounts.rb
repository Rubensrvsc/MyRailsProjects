class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.float :qtd
      t.date :data_conta
      t.string :comentario

      t.timestamps
    end
  end
end
