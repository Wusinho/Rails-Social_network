module CategoriesHelper
  def carousel(article)
    if article
      render 'carousel'
    else
      render 'default'

    end
  end




end
