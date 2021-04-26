module ArticlesHelper
  def btnacticles
    return unless current_user

    if @article.liked?(current_user)
      content_tag(:button, content_tag(:span, @article.votes.count, class: %w[badge badge-light]), class: %w[btn btn-success disabled])
    # <button type="button" class="btn btn-success ">Like <span class="badge badge-light"><%=  @article.votes.count  %></span></button>

    else
      link_to('Vote', vote_path(@article), method: :put, class: 'btn btn-success')
    end
  end

  def edit
    link_to('Edit', edit_article_path(@article), class: 'btn btn-danger') if current_user && current_user.username == @article.user.username
  end
end
