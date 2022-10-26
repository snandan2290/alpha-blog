class ArticlesController < ApplicationController

    def show
        # byebug
        article = Article.find(params[:id])
        @title = article.title
        @desc = article.description
    end
     
    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(params.require(:article).permit(:title, :description))
        if @article.save
          flash[:notice] = "Article saved successfully"
        #   redirect_to @article
           @articles = Article.all
          render 'index'
        else
          render 'new'
        end
    end
    
end