class AddMoreFieldsToCinemas < ActiveRecord::Migration[5.2]
  def change
    add_column :cinemas, :cast, :string
    add_column :cinemas, :director, :string
    add_column :cinemas, :duration, :string
    add_column :cinemas, :image_file_name, :string
  end
end
