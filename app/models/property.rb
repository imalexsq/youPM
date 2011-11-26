class Property < ActiveRecord::Base
  belongs_to :manager
  has_many :property_unit
end
