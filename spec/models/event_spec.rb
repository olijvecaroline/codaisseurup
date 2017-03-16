require 'rails_helper'

RSpec.describe Event, type: :model do

describe "association with user" do

  let!(:user) { create :user }

  it "belongs to a user" do
    
    event = user.events.new()

    expect(event.user).to eq(user)
  end

end
end
