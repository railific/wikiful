class Category < ActiveRecord::Base
  has_many :article_categories
  has_many :articles through: :article_categories
  
  validates :name, uniqueness: true
  
end
