class CreateInvestments < ActiveRecord::Migration[7.0]
  def change
    create_table :investments do |t|
      t.float :amount
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
