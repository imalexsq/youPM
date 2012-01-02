class Rentbill < ActiveRecord::Base
  has_many :rentbill_line_items, :dependent => :destroy
  
  validates :bill_date, :presence => true
  validates :tenant_id, :presence => true
  
  accepts_nested_attributes_for :rentbill_line_items, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true  
end
