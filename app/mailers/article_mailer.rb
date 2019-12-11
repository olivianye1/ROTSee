class ArticleMailer < ApplicationMailer
  
  def new_article_email
    @article = params[:article]
    @cadet = params[:cadet]
    
    if @article.tag == "All"
      mail(to: @cadet.email, subject: "New Post on ROTSee")
    elsif @article.tag == @cadet.flight
      mail(to: @cadet.email, subject: "New Post on ROTSee")
    else
    end

  end
  
end
