class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
  has_many :user_skills
  has_many :skills, through: :user_skills
  has_many :transactions
  has_many :jobs
  has_many :cv_templates

end
