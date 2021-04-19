class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]
  # GET /articles or /articles.json
  def index
    @articles = Article.all
    @most_recent = Article.order_category
    @group = @most_recent.ordered_by_most_recent

    # @most_recent = Article.limit(4).order(created_at: :desc)
    # @most_recent = @order.distinct

    # @recent.each do |book|
    # @box = book.category_id.created_at
    # end
  end

  # GET /articles/1 or /articles/1.json
  def show; end

  def vote
    @article = Article.all.find(params[:id])
    Vote.create(user_id: current_user.id, article_id: @article.id)

    redirect_to article_path(@article)
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit; end

  # POST /articles or /articles.json
  def create
    @article = current_user.articles.build(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def article_params
    params.require(:article).permit(:title, :body, :image, :user_id, :category_id)
  end
end
