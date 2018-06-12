class HighlightsController < ApplicationController

  before_action :authenticate_user!

  def index
    @highlights = current_user.highlights.order_by_recently_updated.includes(:text)
  end

  def create
    @text = Text.find(params[:text_id])
    @highlight = @text.highlights.new(highlight_params)
    @highlight.user = current_user
    if @highlight.save
      respond_to do |format|
        format.html { redirect_to @text, notice: 'Highlight added' }
        format.js
      end
    else
      redirect_to @text, alert: 'Highlight failed to save, please try again'
    end
  end

  def edit
    @text = Text.find(params[:text_id])
    @highlight = @text.highlights.find(params[:id])
  end

  def update
    @text = Text.find(params[:text_id])
    @highlight = @text.highlights.find(params[:id])
    if @highlight.update(highlight_params)
      respond_to do |format|
        format.html { redirect_to @text, notice: 'Highlight updated' }
        format.js
      end
    else
      redirect_to @text, alert: 'Highlight failed to update, please try again'
    end
  end

  def destroy
    @text = Text.find(params[:text_id])
    @highlight = @text.highlights.find(params[:id])
    @highlight.destroy
    respond_to do |format|
      format.html { redirect_to @text, notice: 'Highlight removed' }
      format.js
    end
  end

  private
  def highlight_params
    params.require(:highlight).permit(:content, :notes)
  end

end
