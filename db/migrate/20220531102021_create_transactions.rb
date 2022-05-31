class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.datetime :transaction_at
      t.integer :package

      t.timestamps
    end
  end
end
