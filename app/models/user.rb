class User < ApplicationRecord
  attr_accessor :first_name, :last_name

  has_many :events, dependent: :destroy
  has_many :bookings, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :booked_events, through: :bookings, source: :event
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
           #dependent: :destroy
         has_one :profile

         def has_profile?
           profile.present? && !profile.id.nil?
         end

         def full_name
           profile.full_name
         end


end
