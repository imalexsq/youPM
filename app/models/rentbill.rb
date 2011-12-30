class Rentbill < ActiveRecord::Base
  has_many :rentbill_line_item
  
  validates :bill_date, :presence => true
  validates :tenant_id, :presence => true
  
end
