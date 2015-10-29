class ArticlesController < ApplicationController
  before_action :article, only: [:up_vote, :down_vote]
  around_action :render_back, only: [:up_vote, :down_vote]

  def index
    @articles = Article.all
  end

  def show
  end

  def up_vote
    @article.up_vote!
  end

  def down_vote
    @article.down_vote!
  end

  private

  def render_back
    respond_to do |format|
      format.html { redirect_to :back }
    end
  end

  def article
    @article = Article.find(params[:id])
  end
end
