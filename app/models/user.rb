class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
          :validatable, :confirmable, :lockable,
          :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist
  has_many :user_skills
  has_many :skills, through: :user_skills
  has_many :transactions
  has_many :jobs
  has_many :cv_templates
  validates :first_name, presence: true
  validates :last_name, presence: true

  ADDITIONAL_USER_FIELDS = [
    :first_name,
    :last_name
  ]

end
