class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
  end

  def up_vote
  end

  def down_vote
  end
end
