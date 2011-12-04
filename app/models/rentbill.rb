class Rentbill < ActiveRecord::Base
  has_many :rentbill_line_item
end
