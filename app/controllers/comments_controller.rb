class CommentsController < ApplicationController

    # http_basic_authenticate_with name: "vick3d", password: "supersecret", except: [:index, :show]
    
    def create
        @article = Article.find(params[:article_id])
        if @article.comments.create(comment_params).invalid?
            redirect_to article_path(@article)
            flash[:alert] = "Email adress is not valid"
        else
            @comment = @article.comments.create(comment_params)
            redirect_to article_path(@article)
        end
    end

    def destroy
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article)
      end
     
    private
    
    def comment_params
      params.require(:comment).permit(:commenter, :email, :body)
    end
end
