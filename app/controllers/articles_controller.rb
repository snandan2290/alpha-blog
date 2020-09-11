class ArticlesController < ApplicationController

    def show
        # byebug
        article = Article.find(params[:id])
        @title = article.title
        @desc = article.description
    end

    
end