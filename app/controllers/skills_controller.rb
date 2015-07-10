class SkillsController < ApplicationController

  def index
    @skills = Skill.order(:skill_name)
  end

  def new
    if current_user && current_user.admin?
      @skill = Skill.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      flash[:notice] = "Your skill has been saved."
      redirect_to skills_path
    else
      render :new
    end
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def edit
    if current_user && current_user.admin?
      @skill = Skill.find(params[:id])
    else
      redirect_to new_user_session_path
    end
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update(skill_params)
      flash[:notice] = "Your edits have been saved."
      redirect_to skills_path
    else
      render :edit
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to skills_path
  end

  private
  def skill_params
    params.require(:skill).permit(:skill_name, :skill_short_description, :skill_full_description, :skill_icon)
  end
end
