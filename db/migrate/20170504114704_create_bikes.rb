class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.integer :manufacturer_id
      t.string :name
      t.text :description
      t.string :image_url

      t.timestamps null: false
    end
  end
end
