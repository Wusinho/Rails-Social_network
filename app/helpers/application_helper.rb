module ApplicationHelper

def navbarUser
    if user_signed_in?
        'Write Something'
    else
        'Getting Started'
    end
end


    def superOptions

        if user_signed_in? && current_user.username == 'Super'
            link_to('New Category', new_category_path, class:'dropdown-item') +
            link_to( 'All Articles', articles_path, class:'dropdown-item') 
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
            list += image_tag category.image_url
            list += "</div>"
            list += "<div class='col-md-6 p-4' >"
            list += link_to category.title, article_path(category.id) 
            list += "<p class='card-text'>" 
            list += category.body 
            list += "</p> "
            list += "</div>"
            list += "</div> </div> "
        end
        end
        list.html_safe
    end

    def categories_showb(categories)
        list = ''
        categories.each_with_index do |category, index|
            return if category.nil?

            if index >= 2
            list += "<div class='col-md-6 p-0' >"
            list += "<div class='row no-gutters' >"
            list += "<div class='col-md-6 p-4' >"
            list += link_to category.title, article_path(category.id) 
            list += "<p class='card-text'>" 
            list += category.body 
            list += "</p> "
            list += "</div>"
            list += "<div class='col-md-6' style='height: 39vh' >"
            list += image_tag category.image_url
            list += "</div>"
            list += "</div> </div> "
        end
        end
        list.html_safe
    end

    def recent_cat(categories)
        list = ''

        categories.each do |category|

            if category.articles.ordered_by_most_recent.first
                list += "<div class='col-3 py-3 d-flex flex-column justify-content-between text-white' style='background: url( #{category.articles.ordered_by_most_recent.first.image_url}); background-size : cover '>"
                list += "#{link_to category.name, category_path(category.id), class: 'text-warning'}"
                list += "<h3>#{category.articles.ordered_by_most_recent.first.title }</h3>"
                list += "</div>"



            end
        
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
