class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :email
      t.integer :qualification_level
      t.text :qualification_degree
      t.string :user_type
      t.float :experience_year
      t.text :experience_details
      t.text :current_job
      t.string :phone_number
      t.string :language
      t.text :personal_description
      t.text :achievements
      t.text :useful_links

      t.timestamps
    end
  end
end
