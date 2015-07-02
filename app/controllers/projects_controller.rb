class ProjectsController < ApplicationController

  def new
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.new
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.new(project_params)
    if @project.save
      flash[:notice] = "Your project has been added."
      redirect_to skill_path(@skill.id)
    else
      render :new
    end
  end

  def edit
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.find(params[:id])
    if @project.update(project_params)
      flash[:notice] = "Your project has been updated."
      redirect_to skill_path(@skill.id)
    else
      render :edit
    end
  end

  def destroy
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.find(params[:id])
    @project.destroy
    redirect_to skill_path(@skill)
  end

  private
  def project_params
    params.require(:project).permit(:project_name, :project_short_description, :project_full_description, :project_link, :project_image_url)
  end

end
