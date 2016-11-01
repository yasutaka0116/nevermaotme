class CreateSubtitles < ActiveRecord::Migration
  def change
    create_table :subtitles do |t|
      t.text         :title
      t.references   :matome
      t.integer      :order
      t.timestamps null: false
    end
  end
end
