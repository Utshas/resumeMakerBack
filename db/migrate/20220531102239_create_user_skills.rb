class CreateUserSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :user_skills do |t|
      t.integer :user_id
      t.integer :skill_id
      t.boolean :is_skill

      t.timestamps
    end
  end
end
