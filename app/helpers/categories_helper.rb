module CategoriesHelper
  def carousel(article)
    if article.nil?
      render 'default'

    else
      render 'carousel'

    end
  end

  def categories_showt(categories)
    list = ''
    categories.each_with_index do |category, index|
      return if category.nil?

      if index < 2
      list += "<div class='col-md-6 p-0' >"
      list += "<div class='row no-gutters' >"
      list += "<div class='col-md-6' style='height: 39vh' >"
      list += "image_tag j.image_url"

      list += "<h2>#{link_to category.name, category_path(category), class: 'cl-lg'}</h2>"
      list += "<h2 class='cl-lg'>article name:     #{category.articles.ordered_by_most_recent.first.title}</h2>"
      list += "</div> </div> "
                              end
    end
    list.html_safe
  end





end
