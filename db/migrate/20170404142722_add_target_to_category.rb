class AddTargetToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :target, :float
  end
end
