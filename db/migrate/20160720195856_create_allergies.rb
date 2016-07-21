class CreateAllergies < ActiveRecord::Migration
  def change
    create_table :allergies do |t|
      t.text :restriction
      t.belongs_to :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
