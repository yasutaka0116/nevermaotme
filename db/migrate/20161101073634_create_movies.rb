class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.text           :url
      t.references     :matome
      t.integer        :order
      t.timestamps null: false
    end
  end
end
