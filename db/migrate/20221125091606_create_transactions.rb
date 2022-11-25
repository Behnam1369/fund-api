class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.references :asset, null: false, foreign_key: true
      t.float :qty
      t.float :amount
      t.date :date
      
      t.timestamps
    end
  end
end
