class Rentbill < ActiveRecord::Base
  has_many :rentbill_line_items, :dependent => :destroy
  
  validates_presence_of :bill_date
  validates_presence_of :tenant_id
  
  accepts_nested_attributes_for :rentbill_line_items, :reject_if => :all_blank, :allow_destroy => true  
end
