class CreateUserSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :user_skills do |t|
      t.references :user, foreign_key: true
      t.references :skill, foreign_key: true
      t.boolean :is_skill

      t.timestamps
    end
  end
end
