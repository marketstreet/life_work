class User < ApplicationRecord
  ROLES = ['admin', 'client', 'employee', 'lawyer', 'paralegal']
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence: true
  belongs_to :organization
  belongs_to :account
  validates_inclusion_of :role, in: ROLES
end
