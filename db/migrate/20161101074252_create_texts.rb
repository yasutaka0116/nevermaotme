class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.text      :text
      t.references   :matome
      t.integer     :order
      t.timestamps null: false
    end
  end
end
