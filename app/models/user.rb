class User < ApplicationRecord

  belongs_to :shop

  has_one :shop

end
