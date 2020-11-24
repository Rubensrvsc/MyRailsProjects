class CreateAccounttypes < ActiveRecord::Migration[6.0]
  def change
    create_table :accounttypes do |t|
      t.string :tipo_conta

      t.timestamps
    end
  end
end
