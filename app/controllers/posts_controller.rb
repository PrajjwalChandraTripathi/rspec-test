class PostsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @posts = Post.all
        render json: @posts
    end

    def show
        @post = Post.find(params[:id])
        render json: @post
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            render json: @post
        else
            render json: {error: 'Error creating post'}
        end
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
            render json: @post
        else
            render json: {error: 'Error updating post'}
        end
    end

    def destroy
        @post = Post.find(params[:id])
        if @post.destroy
          head :ok # Send a 200 OK response without rendering a template
        else
          render json: { error: 'Error deleting post' }, status: :unprocessable_entity
        end
      end

    private

    def post_params
        params.require(:post).permit(:name, :body)
    end
end
