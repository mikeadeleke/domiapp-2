class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.integer :rent
      t.string :type
      t.datetime :published_at

      t.timestamps
    end
  end
end
