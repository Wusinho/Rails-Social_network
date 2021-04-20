module CategoriesHelper
  def carousel(article)
    if article.nil?
      render 'default'

    else
      render 'carousel'

    end
  end







end
