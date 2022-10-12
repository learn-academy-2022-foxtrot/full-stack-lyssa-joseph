class MainController < ApplicationController

    def index
        @blogs = Blog.all
    end

    def show
        @blog = Blog.find(params[:id])
    end

    def new
        @blog = Blog.new
    end

    def create
        @blog = Blog.create((blog_params))
        if @blog.valid?
            redirect_to blogs_path
        end
    end

    def destroy
        @blog = Blog.find(params[:id])
        @blog.destroy
        redirect_to blogs_path
    end

    private
    def blog_params
        params.require(:blog).permit(:title, :content)
    end
    

end
