class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.float :price
      t.text :description
      t.integer :user_id
      t.integer :allergy_id
      t.string :allergy

      t.timestamps null: false
    end
  end
end
