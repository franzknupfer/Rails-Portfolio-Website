class ProjectsController < ApplicationController

  def new
    @skill = Skill.find(params[:skill_id])
    @project = @skill.comments.new
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @project = @skill.comments.new(comment_params)
    if @project.save
      flash[:notice] = "Your project has been added."
      redirect_to skill_path(@skill.id)
    else
      render :new
    end
  end

  def edit
    @skill = Skill.find(params[:skill_id])
    @project = @skill.comments.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:skill_id])
    @project = @skill.comments.find(params[:id])
    if @project.update(comment_params)
      flash[:notice] = "Your project has been updated."
      redirect_to skill_path(@skill.id)
    else
      render :edit
    end
  end

  def destroy
    @skill = Skill.find(params[:skill_id])
    @project = @skill.comments.find(params[:id])
    @project.destroy
    redirect_to skill_path(@skill)
  end

  private
  def comment_params
    params.require(:project).permit(:text, :author)
  end

end
