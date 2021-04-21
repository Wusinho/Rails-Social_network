module CategoriesHelper
  def carousel(article)
    if article
      render 'carousel'
    else
      render 'default'

    end
  end


def recent(art)
  art.each do |category|

    if category.articles.ordered_by_most_recent.first

    render 'recentarticles', category: :category
  
    end
  end
end



end
