class CreateExpensetypes < ActiveRecord::Migration[6.0]
  def change
    create_table :expensetypes do |t|
      t.string :tipo_receita

      t.timestamps
    end
  end
end
