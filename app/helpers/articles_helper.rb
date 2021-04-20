module ArticlesHelper

def btnacticles
    if current_user
        if @article.liked?(current_user)
            content_tag(:button, content_tag(:span, @article.votes.count, class:["badge", "badge-light"]), class:["btn", "btn-success", "disabled"])
        #<button type="button" class="btn btn-success ">Like <span class="badge badge-light"><%=  @article.votes.count  %></span></button>
       

        else
            link_to("Vote", vote_path(@article), method: :put, class:'btn btn-success')
        end
    end
end

def edit
    if current_user && current_user.username == @article.user.username
        link_to('Edit', edit_article_path(@article), class:'btn btn-danger') 
    end
end




end
