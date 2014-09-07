class WelcomeController < ApplicationController
  def index
    @recent_articles = Article.order(updated_at: :desc).first(5)
  end
end
