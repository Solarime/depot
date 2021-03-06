# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all

Product.create(title: 'Programming Ruby',
                description:
                    %{<p>
                        Ruby is the fastest growing and most exciting dynamic language
                        out there.  If you need to get working programs delivered fast,
                        you should add Ruby to your toolbox.
                   <p>},
                image_url: '/images/ruby.jpg',
                price: 49.50)
Product.create(title: 'RTPRTPRTPRTPRTPRTP',
                description:
                    %{<p>
                        Ruby is the fastest growing and most exciting dynamic language
                        out there.  If you need to get working programs delivered fast,
                        you should add Ruby to your toolbox.
                   <p>},
                image_url: '/images/rtp.jpg',
                price: 9.50)
Product.create(title: 'Rails-RailsRails',
                description:
                    %{<p>
                        Ruby is the fastest growing and most exciting dynamic language
                        out there.  If you need to get working programs delivered fast,
                        you should add Ruby to your toolbox.
                   <p>},
                image_url: '/images/wd4d.jpg',
                price: 4.50)

Order.delete_all

99.times do |n|
  name = Faker::Name.name
  address = Faker::Address.street_address
  email = Faker::Internet.email
  Order.create(
           name: name,
           address: address,
           email: email,
           pay_type: "Check"
  )
end