class HighlightsController < ApplicationController
  def create
    @text = Text.find(params[:text_id])
    @highlight = @text.highlights.new(highlight_params)
    @highlight.user = current_user
    @highlight.save
    respond_to do |format|
      format.html { redirect_to @text, notice: 'Highlight added' }
      format.js
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
