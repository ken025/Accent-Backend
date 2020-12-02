class CreatePins < ActiveRecord::Migration[6.0]
  def change
    create_table :pins do |t|
      t.string :category
      t.text :img_url
      t.text :description
      t.string :label
      t.text :link_to_product

      t.timestamps
    end
  end
end
