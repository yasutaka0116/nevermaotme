class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text        :image
      t.text        :title
      t.references  :matome
      t.integer     :order
      t.timestamps null: false
    end
  end
end
