module ApplicationHelper

def navbarUser
    if user_signed_in?
        'Write Something'
    else
        'Getting Started'
    end
end


# def navbarOptions
    
#     if user_signed_in?
#         <div class="dropdown-menu">
          
  
#             <a class="dropdown-item" href="<%= new_article_path %>" >New Article</a>
#             <a class="dropdown-item" href="<%= edit_user_registration_path %>" > <%= current_user.username %> </a>
#             <div class="dropdown-divider"></div><a class="dropdown-item" > <%= link_to 'Log Out', destroy_user_session_path, method: :delete , class:"dropdown-item"%></a>
#           </div>
#     else
#         <div class="dropdown-menu">
#             <form class="px-4 py-3" accept-charset="UTF-8" action="<%= new_user_session_path %>" method="post">
#             <input type="hidden" name="authenticity_token" value="<%= form_authenticity_token %>" >
#               <div class="form-group">
#                 <label  for="email">Email address</label>
#                 <input type="email" class="form-control" placeholder="email@example.com" id="email" name="user[email]" type="text" required>
#               </div>
#               <div class="form-group">
#                 <label for="password">Password</label>
#                 <input type="password" class="form-control" id="password" placeholder="Password" name="user[password]" type="password">
#               </div>
#               <div class="form-group">
#                 <div class="form-check">
#                   <input type="checkbox" class="form-check-input" id="dropdownCheck">
#                   <label class="form-check-label" for="dropdownCheck">
#                     Remember me
#                   </label>
#                 </div>
#               </div>
#               <button type="submit" class="btn btn-primary">Sign in</button>
#             </form>
#             <div class="dropdown-divider"></div>
#             <a class="dropdown-item" href="<%= new_user_registration_path %>" >New around here? Sign up</a>
#       </div>

#     end

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





end
