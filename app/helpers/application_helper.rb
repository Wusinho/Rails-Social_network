module ApplicationHelper
  def navbaruser
    if user_signed_in?
      'Write Something'
    else
      'Getting Started'
    end
  end

  def superoptions
    return unless user_signed_in? && current_user.username == 'Super'

    link_to('New Category', new_category_path, class: 'dropdown-item') +
      link_to('All Articles', articles_path, class: 'dropdown-item')
  end

  def categories_showt(categories)
    list = ''
    categories.each_with_index do |category, index|
      next if category.nil?

      next unless index < 2

      list += "<div class='col-md-6 p-0' >"
      list += "<div class='row no-gutters' >"
      list += "<div class='col-md-6' style='height: 39vh' >"
      list += image_tag category.image_url
      list += '</div>'
      list += "<div class='col-md-6 p-4' >"
      list += link_to category.title, article_path(category.id)
      list += "<p class='card-text'>"
      list += category.body
      list += '</p> '
      list += '</div>'
      list += '</div> </div> '
    end
    list.html_safe
  end

  def categories_showb(categories)
    list = ''
    categories.each_with_index do |category, index|
      next if category.nil?

      next unless index >= 2

      list += "<div class='col-md-6 p-0' >"
      list += "<div class='row no-gutters' >"
      list += "<div class='col-md-6 p-4' >"
      list += link_to category.title, article_path(category.id)
      list += "<p class='card-text'>"
      list += category.body
      list += '</p> '
      list += '</div>'
      list += "<div class='col-md-6' style='height: 39vh' >"
      list += image_tag category.image_url
      list += '</div>'
      list += '</div> </div> '
    end
    list.html_safe
  end

  def recent_cat(categories)
    list = ''

    categories.each do |category|
      next unless category.articles.ordered_by_most_recent.first

      list += "<div class='col-3 py-3 d-flex flex-column justify-content-between text-white' style='background: url( #{category.articles.ordered_by_most_recent.first.image_url}); background-size : cover '>"
      list += (link_to category.name, category_path(category.id), class: 'text-warning').to_s
      list += "<h3>#{category.articles.ordered_by_most_recent.first.title}</h3>"
      list += '</div>'
    end
    list.html_safe
  end

  def article_feed(articles)
    list = ''
    articles.each do |article|
      
      list += "<tr>"
      list += "<td>#{ article.title }</td>"
      list += "<td>#{ article.body }</td>"
      list += "<td>#{ article.user.username  }</td>"
      list += "<td>#{ article.category.name }</td>"
      list += "<td>"
      list +=  (link_to 'Destroy', article, method: :delete, data: { confirm: 'Are you sure?' } )
      list += "</td>"
      list += "</tr>"
    end
    list.html_safe
  end

  def recent_art(articles)
    list = ''

    articles.each do |article|
    list += image_tag article.image_url
    list +=  "<div class='carousel-caption d-none d-md-block'>"
    list += "<h5>#{ article.title }</h5>"
    list += "</div>"
  
    end
    list.html_safe

  end

  






  def dropmenu
    if user_signed_in?

      render 'shared/signed_in'

    else
      render 'shared/not_signed_in'

    end
  end
end
