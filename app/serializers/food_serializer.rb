class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :breakfast, :lunch, :dinner, :calendar
end
