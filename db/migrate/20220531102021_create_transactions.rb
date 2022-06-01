class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true
      t.datetime :transaction_at
      t.integer :package

      t.timestamps
    end
  end
end
