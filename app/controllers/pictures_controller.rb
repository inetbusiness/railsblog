class PicturesController < ApplicationController
  # POST /pictures
  # POST /pictures.json
  def create
    if params[:comment_id]
      @imageable = Comment.find(params[:comment_id])
    elsif params[:article_id]
      @imageable = Article.find(params[:article_id])
    end

    @picture = @imageable.pictures.build(picture_params)

    respond_to do |format|
      if @picture.save
        format.html { redirect_to @imageable, notice: 'Picture was successfully created.' }
        format.json { render :show, status: :created, location: @picture }
      else
        format.html { redirect_to @picture.imageable }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  private
	# Never trust parameters from the scary internet, only allow the white list through.
    def picture_params
      params.require(:picture).permit(:imageable, :url)
    end
end
