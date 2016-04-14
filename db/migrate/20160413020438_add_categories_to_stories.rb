class AddCategoriesToStories < ActiveRecord::Migration
  def change
    add_column :stories, :tags, :string
  end
end
