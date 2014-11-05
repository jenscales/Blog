class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
  end

  def create
    @article = Article.new(article_params)
    #render plain: params[:article].inspect
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end


  private
  def article_params
    params.require(:article).permit(:title, :topic, :text)
  end


end
