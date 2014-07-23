class Item < ActiveRecord::Base
  attr_accessible :description, :name, :category_ids
  has_and_belongs_to_many :categories
end