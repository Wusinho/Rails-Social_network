module CategoriesHelper
  def carousel(article)
    if article.nil?
      render 'default'

    else
      render 'carousel'

    end
  end

  def loop(categories)
    return if categories.nil?

    categories.each do |j|
      next unless j.articles.ordered_by_most_recent.first

      link_to(j.name, category_path(j.id), class: ['text-warning'])
    end
  end
end
