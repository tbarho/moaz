# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Property.create([
  {
    :address => "3005 Gabriel View Drive, Georgetown, TX 78628",
    :price => 365000,
    :beds => 4,
    :baths => 2.5,
    :sqft => 2450,
    :neighborhood => "River Bend Section 1",
    :description => "This is a great property on one of the premier streets in Georgetown. The house has recently been completely remodeled, including refinishing the hardwood floors, completely remodeling the kitchen, and an addition to the master bathroom. The remodel also included new garage doors, new paint and roof, and additional insulation and rockwork throughout the entire home."
  },
  {
    :address => "217 VP Ranch Drive, Georgetown, TX 78628",
    :price => 849900,
    :beds => 5,
    :baths => 4.0,
    :sqft => 4369,
    :neighborhood => "Escalera Ranch",
    :description => "Beautiful craftsman style home. Gourmet kitchen with Wolf and Sub-Zero, knotty alder cabinets, scraped hickory floors, travertine, Guest casita, craft room, study (any of which could be additional bedrooms), luxury master bath with walk-thru shower,excercise room. Dream outdoor kitchen with built-in grill,side burner, fridge,sink and granite counters and outdoor fireplace, salt-water pool, sprinklers front and back,3 car garage and storage everywhere!Incredible views and sunsets!"
  }
])

Testimonial.create([
  {
    :person => "Jane Doe",
    :address => "1234 My Street",
    :content => "I just love my house so much.  The service was great, and the product was even greaterer.  I highly recommend this company."
  },
  {
    :person => "John Doe",
    :address => "1235 My Street",
    :content => "I just love my house so much.  The service was great, and the product was even greaterer.  I highly recommend this company."
  }

])
