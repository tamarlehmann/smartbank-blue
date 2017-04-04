class AddTransactionRefToCategory < ActiveRecord::Migration[5.0]
  def change
    add_reference :categories, :transaction, foreign_key: true
  end
end
