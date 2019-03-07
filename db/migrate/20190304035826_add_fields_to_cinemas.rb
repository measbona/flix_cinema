class AddFieldsToCinemas < ActiveRecord::Migration[5.2]
  def change
    add_column :cinemas, :description, :text
    add_column :cinemas, :released_on, :date
  end
end
