class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text    :text
      t.text    :source_url
      t.text    :source_comment
      t.text    :source
      t.references   :matome
      t.integer     :order
      t.timestamps null: false
    end
  end
end
