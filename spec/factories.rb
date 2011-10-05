Factory.define :user do |user|
  user.name                   "Sample User"
  user.email                  "sample@example.com"
  user.password               "samplepass"
  user.password_confirmation  "samplepass"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :property do |property|
  property.address "3005 Gabriel View Drive"
  property.price 292000.00
  property.beds 4
  property.baths 2.5
  property.sqft 2450
  property.description "Beautiful home located on one of the premier streets in Georgetown, TX.  4 car garage and guest suite or office detached from house.  Recently remodeled!"
end
