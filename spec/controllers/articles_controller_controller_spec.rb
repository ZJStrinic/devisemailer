require 'rails_helper'

RSpec.describe ArticlesControllerController, type: :controller do
  before do
      @article = articles(:one)
  end
  
  describe "should get article index" do
    it "gets index" do
      get articles_url
      
      expect(page.status_code).to eq(200)
      end
    end
    
  describe "should get new article" do
    it "gets new article" do
      get new_article_url
      
      expect(page.status_code).to eq(200)
      end
    end
    
  describe "should create article" do
    it "creates article" do
      post articles_url, params: { article: { body: @article.body, title: @article.title } }
      
      redirected_to article_url(Article.last)
      
      expect(page.status_code).to eq(200)
      
      end.to change {"Article.count"}.by(1)
    end
    
  describe "should show article" do
    it "shows article" do
      get article_url(@article)
      
      expect(page.status_code).to eq(200)
      end
    end
    
  describe "should get edit" do
    it "showing edit article url" do
      get edit_article_url(@article)
      
      expect(page.status_code).to eq(200)
      end
    end
    
  describe "should update article" do
    it "updates article" do
      get patch article_url(@article), params: { article: { body: @article.body, title: @article.title } }
      
      redirected_to article_url(@article)
      
      expect(page.status_code).to eq(200)
      end
    end
    
  describe "should destroy article" do
    it "destroys article" do
      delete article_url(@article)
      
      redirected_to articles_url
      
      expect(page.status_code).to eq(200)
      end.to change {"Article.count"}.by(-1)
    end
    
  end


