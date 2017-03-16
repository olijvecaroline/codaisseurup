require 'rails_helper'


RSpec.describe Event, type: :model do
  describe "validations" do



    let!(:event1) { create :event, price: 100 }
    let!(:event2) { create :event, price: 200 }
    let!(:event3) { create :event, price: 300 }

    

    it "is not valid without a name" do
      event= Event.new(name: "")
      event.valid?
      expect(event.errors).to have_key(:name)
    end

it "is not valid without a description"do
    event=Event.new(description: "b"*69)
    event.valid?
    expect(event.errors).to have_key(:description)
    end


  it "Event can have an empty price field" do
    event=Event.new(price: "")
    event.valid?
    expect(event.errors).to not_have_key(:price)
    end
end
end
