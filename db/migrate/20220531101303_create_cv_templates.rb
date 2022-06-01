class CreateCvTemplates < ActiveRecord::Migration[6.1]
  def change
    create_table :cv_templates do |t|
      t.string :link
      t.references :user, foreign_key: true
      t.boolean :published

      t.timestamps
    end
  end
end
