class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.references :publisher, index: true, foreign_key: true
      t.text :style_attributes

      t.timestamps null: false
    end
  end
end
