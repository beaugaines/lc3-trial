class TextsController < ApplicationController
  before_action :authenticate_user!, only: :show

  def index
    @texts = Text.all
  end

  def show
    @text = Text.find(params[:id])
    @highlights = @text.highlights.where(user_id: current_user.id)
  end

end
