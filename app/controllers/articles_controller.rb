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

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
      # Une fois l'élément détruit, l'action nous renvoie à la racine du projet.
    redirect_to root_path
  end




  private

  def article_params
    params.require(:article).permit(:title, :body)
  end


end

