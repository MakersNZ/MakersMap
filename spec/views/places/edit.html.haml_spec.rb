require 'rails_helper'

RSpec.describe "places/edit", type: :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      :name => "MyString",
      :description => "MyText",
      :latlong => ""
    ))
  end

  it "renders the edit place form" do
    render

    assert_select "form[action=?][method=?]", place_path(@place), "post" do

      assert_select "input#place_name[name=?]", "place[name]"

      assert_select "textarea#place_description[name=?]", "place[description]"

      assert_select "input#place_latlong[name=?]", "place[latlong]"
    end
  end
end
