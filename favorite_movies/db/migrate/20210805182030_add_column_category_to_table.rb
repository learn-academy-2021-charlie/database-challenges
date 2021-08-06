class AddColumnCategoryToTable < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :categories, :string
  end
end
