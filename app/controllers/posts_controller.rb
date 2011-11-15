class PostsController < ApplicationController
  before_filter :authenticate_with_admin, :except => [:index, :show]
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find_by_slug(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    count = current_user.posts.size + 1
    new_post = current_user.posts.create!(:title => "New Post #{count}", :body => "Put your post content here ...")
    redirect_to "/editor" + post_path(new_post)

    #respond_to do |format|
    #  format.html # new.html.erb
    #  format.json { render json: @post }
    #end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find_by_slug(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @user = User.find(params[:post][:user_id])
    @post = @user.posts.create(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find_by_slug(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find_by_slug(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :ok }
    end
  end

  def mercury_update
    post = Post.find(params[:id])
    post.title = params[:content][:post_title][:value]    
    post.body = params[:content][:post_body][:value]    
    post.save!
    render text: ""
  end

end
