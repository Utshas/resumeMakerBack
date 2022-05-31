class JobSkillsController < ApplicationController
  before_action :set_job_skill, only: [:show, :update, :destroy]

  # GET /job_skills
  def index
    @job_skills = JobSkill.all

    render json: @job_skills
  end

  # GET /job_skills/1
  def show
    render json: @job_skill
  end

  # POST /job_skills
  def create
    @job_skill = JobSkill.new(job_skill_params)

    if @job_skill.save
      render json: @job_skill, status: :created, location: @job_skill
    else
      render json: @job_skill.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /job_skills/1
  def update
    if @job_skill.update(job_skill_params)
      render json: @job_skill
    else
      render json: @job_skill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /job_skills/1
  def destroy
    @job_skill.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_skill
      @job_skill = JobSkill.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_skill_params
      params.require(:job_skill).permit(:skill_id, :job_id)
    end
end
