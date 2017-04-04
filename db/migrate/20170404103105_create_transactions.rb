class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.date :date
      t.float :amount
      t.string :vendor
      t.string :type

      t.timestamps
    end
  end
end
