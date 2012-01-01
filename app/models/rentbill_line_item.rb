class RentbillLineItem < ActiveRecord::Base
  belongs_to :rentbill
  
  validates :amount, :presence => true
  validates :description, :presence => true
  validates :category, :presence => true
end
