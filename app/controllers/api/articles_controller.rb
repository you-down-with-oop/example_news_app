class Api::ArticlesController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/everything?q=#{params[:search]}&apiKey=#{ENV["NEWS_API_KEY"]}")
    articles = response.parse
    render json: articles
  end
end
