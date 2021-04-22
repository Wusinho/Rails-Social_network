module CategoriesHelper
  def carousel(article)
    if article
      render 'carousel'
    else
      render 'default'

    end
  end


  def nav_category
    list = ''

    Category.all.each do |category|
      return if category.nil?

      list += (link_to category.name, category_path(category.id))
    end
    list.html_safe
  end
end
