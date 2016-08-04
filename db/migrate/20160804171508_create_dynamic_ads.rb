class CreateDynamicAds < ActiveRecord::Migration
  def change
    create_table :dynamic_ads do |t|
      t.string :link
      t.string :title

      t.timestamps null: false
    end
  end
end
