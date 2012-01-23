class RentbillLineItem < ActiveRecord::Base
  belongs_to :rentbill
  
  validates_presence_of :amount
  validates_presence_of :description
  validates_presence_of :category
end
