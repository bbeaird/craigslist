class Post < ActiveRecord::Base
  attr_accessible :description, :price, :title, :category_id
end
