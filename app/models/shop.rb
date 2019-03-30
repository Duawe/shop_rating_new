class Shop < ApplicationRecord

  belongs_to :user
  belongs_to :category

  has_many :users
  has_many :categories

  has_many_attached :pictures

end
