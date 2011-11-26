class PropertyUnit < ActiveRecord::Base
  belongs_to :property
  has_many :work_assignment
  has_one :tenant
  has_many :ad
end
