require 'rails_helper'

RSpec.describe Person, type: :model do

  let(:person){ FactoryGirl.create(:person) }
  let(:friend){ FactoryGirl.create(:person) }
  let(:tag){ FactoryGirl.create(:tag, name: "WOODWORKING") }


  describe "tags" do

    it 'has tags' do
      person.tags << tag

      expect(person.tags).to eq([tag])
    end

    # it 'they have this person back' do
    #   person.tags << tag
    #   person.save!
    #   tag.reload
    #   expect(tag.people).to eq([person])
    # end

    it 'does not get confused between people and tags' do
      person.tags << tag
      person.friends << friend

      expect(person.tags).to eq([tag])
    end
  end

  describe "friends" do

    it 'has friends' do
      person.friends << friend

      expect(person.friends).to eq([friend])
    end

    it 'does not get confused between people and tags' do
      person.tags << tag
      person.friends << friend

      expect(person.friends).to eq([friend])
      expect(person.tags).to eq([tag])
    end
  end
end
