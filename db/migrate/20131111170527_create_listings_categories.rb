class CreateListingsCategories < ActiveRecord::Migration
  def change
    create_table :listings_categories, id: false do |t|
    	t.references :listing
    	t.references :category
    end
  end
  def self.down
  	drop_table :listings_categories
  end
end
