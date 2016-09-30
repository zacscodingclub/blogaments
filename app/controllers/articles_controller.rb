class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:index, :show]
  before_action :require_same_user_or_admin, only: [:edit, :update, :destroy]

  def index
    @articles = Article.paginate(page: params[:page], per_page: 5).order('id DESC')
  end

  def new
  	@article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user

    if @article.save
      flash[:success] = "Article was created"
      redirect_to @article
    else
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update
    if @article.update(article_params)
      flash[:success] = "Article was updated"
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    flash[:danger] = "Article was deleted"
    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :description)
    end

    def set_article
      @article ||= Article.find(params[:id])
    end

    def require_same_user_or_admin
      if current_user != @article.user && !current_user.admin?
        flash[:danger] = "You do not have permission for that action."
        redirect_to root_path
      end
    end
end
