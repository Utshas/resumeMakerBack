class CreateJobApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :job_applications do |t|
      t.references :user, foreign_key: true
      t.references :job, foreign_key: true
      t.references :cv_template, foreign_key: true

      t.timestamps
    end
  end
end
