class CommentsController < ApplicationController
  
  def new
    @comment = Comment.new
  end
  
  def create
    @product = Product.find(params[:product_id])
    @comment = Comment.new(content:params[:comment][:content], user: current_user)
    # @comment = @product.comments.create(params[:comment].permit(:comment))
    # @product.comments << @comment
    @comment.product = @product
         #@comment.save
         # redirect_to @post
    # @comment = comment.new(comment_params)
 
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
        format.js {}
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
        format.js {}
      end
    end
  end
end
