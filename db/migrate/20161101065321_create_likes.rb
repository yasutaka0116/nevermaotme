class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references      :user
      t.references      :matome
      t.references      :link
      t.references      :image
      t.references      :quote
      t.references      :text
      t.references      :subtitle
      t.references      :movie
      t.timestamps null: false
    end
  end
end
