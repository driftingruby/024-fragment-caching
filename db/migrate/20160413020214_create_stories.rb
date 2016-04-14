class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.text :content

      t.timestamps null: false
    end
  end
end
