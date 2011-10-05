require 'spec_helper'

describe Property do
  before(:each) do
    @attr = {
      :address => "3005 Gabriel View Drive",
      :price  => 292000.00,
      :beds => 4,
      :baths => 2.5,
      :sqft => 2450,
      :description => "Beautiful home located on one of the premier streets in Georgetown, TX.  4 car garage and guest suite or office detached from house.  Recently remodeled!"
    }

  end
  it "should create an instance given valid attributes" do
    Property.create!(@attr)  
  end

  describe "validations" do
    it "should require an address" do
      no_address_property = Property.new(@attr.merge(:address => "    "))
      no_address_property.should_not be_valid
    end
    it "should require a price" do
      no_price_property = Property.new(@attr.merge(:price => "    "))
      no_price_property.should_not be_valid
    end
    it "should require number of bedrooms" do
      no_beds_property = Property.new(@attr.merge(:beds => "    "))
      no_beds_property.should_not be_valid
    end
    it "should require number of bathrooms" do
      no_baths_property = Property.new(@attr.merge(:baths => "    "))
      no_baths_property.should_not be_valid
    end
    it "should require square footage" do
      no_sqft_property = Property.new(@attr.merge(:sqft => "    "))
      no_sqft_property.should_not be_valid
    end
    it "should require a description" do
      no_desc_property = Property.new(@attr.merge(:description => "    "))
      no_desc_property.should_not be_valid
    end
  end
end
