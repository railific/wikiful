class Article < ActiveRecord::Base
  
  belongs_to :users
  has_many :article_categories
  has_many :categories, through: :article_categories

  validates :title, presence: true
  validates :content, presence: true
  validates :categories, presence: true
  
end
