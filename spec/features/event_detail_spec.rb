require 'rails_helper'

describe "Current user viewing his events" do
  before { }

let!(:user) { create :user, email: "current@user.com" }
let!(:event1) { create :event, name: "Listing Name 1", user: user }


  it "shows this specific event" do
    visit event_path

    expect(page).to have_text("Main info")

  end




end
#nog niet gecheckt
