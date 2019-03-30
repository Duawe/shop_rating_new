# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create(
  [ 
    {
      nickname: 'David', 
      email: 'david@gmail.com', 
      password: 'admin',
      # shop_id: shops[0].id,  
      admin: false
    }  
  ]
)

shops = Shop.create(
  [
    {
      name: 'Рамстор',
      description: 'Hello',
      # user_id: users[0].id,
      # category_id: categories[0].id
    },
    {
      name: 'Домик',
      description: 'Hello',
      # user_id: users[1].id,
      # category_id: categories[1].id
    },
    {
      name: 'Рамстор-2',
      description: 'Hello',
      # user_id: users[2].id,
      # category_id: categories[2].id
    }
  ]
)

categories = Category.create(
  [
    {
      name: 'Кафе',
      # shop_id: shops[0].id
    },
    {
      name: 'Магазин',
      # shop_id: shops[1].id
    },
    {
      name: 'Торговый центр',
      # shop_id: shops[2].id
    }
  ]
)