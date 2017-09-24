class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :desription
      t.string :photo
      t.string :item
      t.string :category
      t.string :location
      t.references :user, foreign_key: true
      t.integer :rating_spot
      t.string :place

      t.timestamps
    end
  end
end
