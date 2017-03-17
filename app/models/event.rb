class Event < ApplicationRecord

  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :photos, dependent: :destroy
  has_many :bookings, dependent: :destroy

  has_many :guests, through: :bookings, source: :user

  validates :name, presence: true
  validates :description, presence: true, length: {maximum: 500}

   def free?
     price == 0
   end

   #def self.order_by_price
    #order(:price)
    #  end


end
