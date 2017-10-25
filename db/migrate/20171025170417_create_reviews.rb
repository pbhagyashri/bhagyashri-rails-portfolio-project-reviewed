class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :taste_rating
      t.integer :health_rating
      t.text :description

      t.timestamps
    end
  end
end
