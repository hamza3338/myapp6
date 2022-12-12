class ProjectsController < ApplicationController
  def new
    @project = Project.new
    @project.build_user
  end

  private

  def project_params
    params.require(project).permit(:name, :description, user_attributes: [:first_name, :second_name])
  end
end