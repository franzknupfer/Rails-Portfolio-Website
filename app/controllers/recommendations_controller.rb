class RecommendationsController < ApplicationController

  def index
    @recommendations = Recommendation.all
  end

  def new
    @recommendation = Recommendation.new
  end

  def create
    @recommendation = Recommendation.new(recommendation_params)
    @recommendation.recommendation_author = current_user.username
    if @recommendation.save
      respond_to do |format|
        format.html { redirect_to skills_url }
        format.js
      end
    end
  end

  def destroy
  end

  private
  def recommendation_params
    params.require(:recommendation).permit(:recommendation_content)
  end
end
