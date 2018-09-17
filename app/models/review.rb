class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  validates :product_id, numericality: true
  validates :user_id, numericality: true
  validates :description, presence: true
  validates :rating, numericality: {greater_than: 0, less_than:6}
  
end
