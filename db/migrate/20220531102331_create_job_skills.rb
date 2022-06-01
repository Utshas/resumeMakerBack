class CreateJobSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :job_skills do |t|
      t.references :skill, foreign_key: true
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
