class Product < ActiveRecord::Base
  belongs_to :type
  attr_accessible :type_id, :amount, :description
end
