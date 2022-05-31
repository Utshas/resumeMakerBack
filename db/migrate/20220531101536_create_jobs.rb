class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :desc
      t.float :requried_exp
      t.integer :qualification_level

      t.timestamps
    end
  end
end
