class CreateSuperpowers < ActiveRecord::Migration[7.2]
  def change
    create_table :superpowers do |t|
      t.string :name
      t.text :description
      t.integer :strength
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
