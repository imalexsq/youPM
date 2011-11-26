class Manager < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  has_secure_password

  has_many :property
  has_many :activity
end
