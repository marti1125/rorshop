class Product < ActiveRecord::Base
  belongs_to :type
  attr_accessible :amount, :description
end
