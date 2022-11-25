class CreateRates < ActiveRecord::Migration[7.0]
  def change
    create_table :rates do |t|
      t.references :asset, null: false, foreign_key: true
      t.float :price
      t.date :date

      t.timestamps
    end
  end
end
