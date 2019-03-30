class Shop < ApplicationRecord

  belong_to :user
  belong_to :category

  has_many :users
  has_many :categories

  has_many_attached :pictures

end
