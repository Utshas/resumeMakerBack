class CreateJobSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :job_skills do |t|
      t.integer :skill_id
      t.integer :job_id

      t.timestamps
    end
  end
end
