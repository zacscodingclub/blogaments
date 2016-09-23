class ArticlesController < ApplicationController
  def index

  end

  def new
  	@article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect :show
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
end
