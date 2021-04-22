module CategoriesHelper
  def carousel(article)
    if article
      render 'carousel'
    else
      render 'default'

    end
  end

  def nav_category(category)
    render 'shared/category_menu' if category.nil?
  end
end
