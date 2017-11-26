class AddTagToTitles < ActiveRecord::Migration[5.1]
  def change
    add_column :titles, :tag, :string
    add_column :titles, :tag2, :string
    add_column :titles, :data, :string
  end
end
