class CreateAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :assets do |t|
      t.string :title
      t.float :qty, default: 0.0
      t.float :price, default: 0.0
      t.float :amount, default: 0.0

      t.timestamps
    end
  end
end
