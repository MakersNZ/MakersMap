require 'rails_helper'

RSpec.describe "places/new", type: :view do
  before(:each) do
    assign(:place, Place.new(
      :name => "MyString",
      :description => "MyText",
      :latlong => ""
    ))
  end

  it "renders new place form" do
    render

    assert_select "form[action=?][method=?]", places_path, "post" do

      assert_select "input#place_name[name=?]", "place[name]"

      assert_select "textarea#place_description[name=?]", "place[description]"

      assert_select "input#place_latlong[name=?]", "place[latlong]"
    end
  end
end
