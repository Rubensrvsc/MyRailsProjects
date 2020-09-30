class CreateReads < ActiveRecord::Migration[6.0]
  def change
    create_table :reads do |t|
      t.date :data_leitura
      t.integer :qtd_lido

      t.timestamps
    end
  end
end
