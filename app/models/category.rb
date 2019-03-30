class Category < ApplicationRecord

  belong_to :shop

  has_one :shop

end
