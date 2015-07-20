require 'rails_helper'

RSpec.describe "people/index", type: :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :jsonb => ""
      ),
      Person.create!(
        :jsonb => ""
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
