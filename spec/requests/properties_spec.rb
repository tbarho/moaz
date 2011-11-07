require 'spec_helper'

describe "Properties" do
  let(:admin) { create(:admin) }
  let(:property1) { create(:property) }
  let(:property2) { create(:property) }
  let(:option1) { property1.options.create(:name => "Garages", :value => "2") }
  let(:option2) { property1.options.create(:name => "Floors", :value => "Hardwood") }

  context "as a normal user" do

    context "on the list properties page" do
      before(:each) do
        visit properties_path
      end
      
      it "should show a list of properties with links to view details" do
        page.should have_selector("a[href=\"/properties/#{property1.address.parameterize}\"]")
        page.should have_selector("a[href=\"/properties/#{property2.address.parameterize}\"]")
      end
      it "should show a picture for each property"
      it "should show the neighboorhood for each property"
    end

    context "on the property details page" do
      before(:each) do
        visit property_path(property1)
      end
      it "should show the property details" do
        page.should have_content(property1.address)
        page.should have_content(property1.neighborhood)
        page.should have_content(property1.price)
        page.should have_content(property1.beds)
        page.should have_content(property1.baths)
        page.should have_content(property1.sqft)
        page.should have_content(property1.description)
      end
      it "should show property pictures"
      it "should show a property floorplan"
      it "should show property options" do
        page.should have_content(option1.name)
        page.should have_content(option1.value)
        page.should have_content(option2.name)
        page.should have_content(option2.value)
      end
      it "should have options that don't need colons"
      it "should show a map" do
        page.should have_selector("div#map")
      end
    end

  end

  context "as an admin" do
    before(:each) do
      visit signin_path
      fill_in "Email", :with => admin.email
      fill_in "Password", :with => admin.password
      click_button "Sign In"
    end

    context "on the the list properties page" do
      before(:each) do
        visit properties_path
      end
      it "should show an add property link" do
        page.should have_selector("a", :content => "Add a property")
      end
    end

    context "on the property details page" do
      before(:each) do
        visit property_path(property1)
      end
      it "should show an edit property link" do
        page.should have_selector("a", :content => "Edit Property")
      end
      it "should show add/delete pictures links" do
        page.should have_selector("a", :content => "Add a picture")
        page.should have_selector("div#picture a", :content => "Remove")
      end
      it "should show add/edit/delete options links" do
        page.should have_selector("a", :content => "Add an option")
        page.should have_selector("div#options", :content => "Remove")
      end
    end

  end

end
