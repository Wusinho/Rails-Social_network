module CategoriesHelper
  def carousel(article)
    if article
      render 'carousel'
    else
      render 'default'

    end
  end


  def nav_category(category)
      if category.nil?
      
      render 'shared/category_menu'
      
      end
  end


end
