class Review < ApplicationRecord
  has_many :restaurants
  has_many :users, through: :restaurants

  def restaurants_attributes=(restaurants_attributes)

    restaurants_attributes.each do |i, restaurant_attribute|
      self.restaurants.build(restaurant_attribute)
    end
  end

end
