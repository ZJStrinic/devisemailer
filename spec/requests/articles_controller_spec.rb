require 'rails_helper'

RSpec.describe "ArticlesControllers", type: :request do
  @article = articles
  
  describe "get article index" do
    it "has a 200 status code" do
      get article_url
      expect(response.status).to eq (200)
    end
  end
  
  describe "new article" do
    it "shows new article form" do
      get new_article_url
      expect(response.status).to eq (200)
    end
  end
  
  describe "create article" do
    it "creates article" do
      post articles_url, params: { article: { body: @article.body, title: @article.title } }
      expect(response.status).to eq (200)
      redirected_to article_url(Article.last)
    end.to change {"Article.count"}.by(1)
  end

  describe "show article" do
    it "shows article" do
      get article_url(@article)
      expect(response.status).to eq (200)
    end
  end
  
  describe "should get edit" do
    it "showing edit article url" do
      get edit_article_url(@article)
      expect(response.status).to eq (200)
    end
  end
  
  describe "should update article" do
    it "updates article" do
      get patch article_url(@article), params: { article: { body: @article.body, title: @article.title } }
      redirected_to article_url(@article)
      expect(response.status).to eq (200)
    end
  end
  
  describe "should destroy article" do
    it "destroys article" do
    delete article_url(@article)
    redirected_to articles_url
    expect(response.status).to eq (200)
    end.to change {"Article.count"}.by(-1)
  end
end

  