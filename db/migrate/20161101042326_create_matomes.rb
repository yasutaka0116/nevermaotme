class CreateMatomes < ActiveRecord::Migration
  def change
    create_table :matomes do |t|

      t.text           :title
      t.text           :explanation
      t.text           :image
      t.text           :content
      t.references     :user
      t.timestamps null: false
    end
  end
end
