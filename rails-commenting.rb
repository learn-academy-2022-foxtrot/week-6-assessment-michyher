# ASSESSMENT 6: Rails Commenting Challenge

# Add comments to the Rails Blog Post Challenge
# Explain the purpose and functionality of the code directly below the 10 comment tags


# FILE: app/controller/blog_posts_controller.rb

# ---1)
# This is just making sure that BlogPostsController and AppplicationController are talking to eachother and it's there by default when opening the app. 
class BlogPostsController < ApplicationController
  def index
    # ---2)
    # This is first accessing all the blog posts that we have created before being able to display them.
    @posts = BlogPost.all
  end

  # ---3)
  # This is now displaying all blog posts
  def show
    @post = BlogPost.find(params[:id])
  end

  # ---4)
  # This is first setting the status for a blog post to be new before we can actually create one and adding logic to create one. 
  def new
    @post = BlogPost.new
  end

  def create
    # ---5)
    # Here we are creating a new blog post, making sure that if all the conditions to make a blog post are met, then it will create a new one.
    @post = BlogPost.create(blog_post_params)
    if @post.valid?
      redirect_to blog_post_path(@post)
    end
  end

  def edit
    # ---6)
    # Here is where we are setting up the process of editing a blog post. First we need to identify which blog post we want to edit, which is what is happening here.
    @post = BlogPost.find(params[:id])
  end

  def update
    @post = BlogPost.find(params[:id])
    # ---7)
    # Here is where we are adding the logic in order to edit the blog post. We are making sure that all the conditions are met in order to edit a blog post and if they are, then it update the information for that specific blog post.
    @post.update(blog_post_params)
    if @post.valid?
      redirect_to blog_post_path(@post)
    end
  end

  def destroy
    @post = BlogPost.find(params[:id])
    if @post.destroy
      # ---8)
      # Here we are redirecting the user to a specific page once a blog post has been deleted.
      redirect_to blog_posts_path
    end
  end

  # ---9)
  private
  def blog_post_params
    # ---10)
    #  These are the conditions for a blog post I have been referring to above. This states that the conditions to make or edit a blog post, it needs to have the following criteria: title and content. 
    params.require(:blog_post).permit(:title, :content)
  end
end
