class CreatePlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.text :content
      t.integer :size
      t.string :galaxy
      t.integer :rating
      t.string :kind
      t.integer :price_per_day
      t.references :owner, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
