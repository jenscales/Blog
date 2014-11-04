class ArticlesController < ApplicationController

  def new
  end

  def create
    @article = Article.new(article_params)
    #render plain: params[:article].inspect

    @article.save
    redirect_to @article
  end

  private
  def article_params
    params.require(:article).permit(:title, :topic, :text)
  end


end
