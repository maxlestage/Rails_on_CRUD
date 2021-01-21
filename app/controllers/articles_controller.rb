class ArticlesController < ApplicationController

  # MISE EN PLACE D'UN C.R.U.D

  # Partie Create  Read
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end
  # Partie Upload
  def edit
    @article = Article.find(params[:id])
  end

  def update
  @article = Article.find(params[:id])

    if @article.update(article_params)
    redirect_to @article
    else
        render :edit
    end
  end

  # Partie Destroy





  private

  def article_params
    params.require(:article).permit(:title, :body)
  end


end

