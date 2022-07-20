class HomeController < ApplicationController
    def index
        @blogs = Blog.all
    end
    def show
        @blogs = Blog.find(params[:id])
    end
    def new
        @blogs = Blog.new
    end
    def create
        @blog = Blog.create(form_params)
        puts '#{form_params}'
        if @blog.valid?
            redirect_to blogs_path
        else
            redirect_to form_path
        end
    end
    private
    def form_params
        params.require(:blog).permit(:title, :content)
    end
end
