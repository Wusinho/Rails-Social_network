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

    def dropdownn
        if user_signed_in?

            render 'dropdowna'
        else
            render 'dropdownb'
        end


    end





end
