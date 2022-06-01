class User < ApplicationRecord
  has_many :user_skills
  has_many :skills through: :user_skills
  has_many :transactions
  has_many :jobs
  has_many :cv_templates
end
