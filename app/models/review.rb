class Review < ActiveRecord::Base

  include ActiveModel::Conversion

  belongs_to :product
  belongs_to :user

  validates :product_id, presence: true
  validates :user_id, presence: true

  validates_associated :product
  validates_associated :user
  validates :content, presence: true
  validates :rating, presence: true

end
