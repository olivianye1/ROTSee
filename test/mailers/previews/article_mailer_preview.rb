# Preview all emails at http://localhost:3000/rails/mailers/article_mailer
class ArticleMailerPreview < ActionMailer::Preview
  
  def new_article_email
    # Set up a temporary order for the preview
    @cadet = Cadet.first
    @article = Article.first

    ArticleMailer.with(article: @article, cadet: @cadet).new_article_email
  end
end
