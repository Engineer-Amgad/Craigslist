class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :price
      t.string :contact
      t.integer :user_id
    end
  end
end
