require 'rails_helper'

RSpec.describe User, type: :model do

  describe "association with event" do
    let(:user) { create :user }
    let!(:event) { create :event, user: user }

    it "has many events" do
      event1 = user.events.new(name: "Wonderful")
      event2 = user.events.new(name: "Extraordinary")

      expect(user.events).to include(event1)
      expect(user.events).to include(event2)
    end

    it "deletes associated events" do
      event1 = user.events.new(name: "Wonderful")
      expect { user.destroy }.to change(Event, :count).by(-1)
    end
  end

  describe "association with booking" do
    let(:guest_user) { create :user, email: "guest@user.com" }
    let(:host_user) { create :user, email: "host@user.com" }

    let!(:event) { create :event, user: host_user }
    let!(:booking) { create :booking, event: event, user: guest_user }

    it "has bookings" do
      expect(guest_user.booked_events).to include(event)
    end
  end


end
