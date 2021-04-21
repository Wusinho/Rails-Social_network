module ApplicationHelper

def navbarUser
    if user_signed_in?
        'Write Something'
    else
        'Getting Started'
    end
end

# def dropmenu

#     if user_signed_in? 
#     list = ''

#         list += "<div class='dropdown-menu'>"
#         list += superOptions
#         list += "<a class='dropdown-item' href="
#         list += new_article_path 
#         list += " >"
#         list += "New Article"
#         list +=  "</a>"
#         list +=  " <a class='dropdown-item' href= "
#         list += edit_user_registration_path
#         list += ">" 
#         list += current_user.username
#         list += "</a>"
#         list += "<div class='dropdown-divider'></div>"
#         list += "<a class='dropdown-item' >" <%= link_to 'Log Out', destroy_user_session_path, method: :delete , class:"dropdown-item"%></a>
#         list +=  </div>
#     else
#         list +=<div class="dropdown-menu">
#         list +=    <form class="px-4 py-3" accept-charset="UTF-8" action="<%= new_user_session_path %>" method="post">
#         list +=    <input type="hidden" name="authenticity_token" value="<%= form_authenticity_token %>" >
#         list +=      <div class="form-group">
#         list +=        <label  for="email">Email address</label>
#         list +=        <input type="email" class="form-control" placeholder="email@example.com" id="email" name="user[email]" type="text" required>
#         list +=      </div>
#         list +=      <div class="form-group">
#         list +=        <label for="password">Password</label>
#         list +=        <input type="password" class="form-control" id="password" placeholder="Password" name="user[password]" type="password">
#         list +=      </div>
#         list +=      <div class="form-group">
#         list +=        <div class="form-check">
#         list +=          <input type="checkbox" class="form-check-input" id="dropdownCheck">
#         list +=          <label class="form-check-label" for="dropdownCheck">
#         list +=            Remember me
#         list +=          </label>
#         list +=        </div>
#         list +=      </div>
#         list +=      <button type="submit" class="btn btn-primary">Sign in</button>
#         list +=    </form>
#         list +=    <div class="dropdown-divider"></div>
#         list +=    <a class="dropdown-item" href="<%= new_user_registration_path %>" >New around here? Sign up</a>
#         list +=</div>
#     end

#     list.html_safe
    
# end


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

end
