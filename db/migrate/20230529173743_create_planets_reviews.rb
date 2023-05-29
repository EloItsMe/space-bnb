class CreatePlanetsReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :planets_reviews do |t|
      t.string :title
      t.text :content
      t.integer :rating
      t.references :planet, null: false, foreign_key: true
      t.references :renter, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
