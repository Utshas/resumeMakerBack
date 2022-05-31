class CvTemplatesController < ApplicationController
  before_action :set_cv_template, only: [:show, :update, :destroy]

  # GET /cv_templates
  def index
    @cv_templates = CvTemplate.all

    render json: @cv_templates
  end

  # GET /cv_templates/1
  def show
    render json: @cv_template
  end

  # POST /cv_templates
  def create
    @cv_template = CvTemplate.new(cv_template_params)

    if @cv_template.save
      render json: @cv_template, status: :created, location: @cv_template
    else
      render json: @cv_template.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cv_templates/1
  def update
    if @cv_template.update(cv_template_params)
      render json: @cv_template
    else
      render json: @cv_template.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cv_templates/1
  def destroy
    @cv_template.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cv_template
      @cv_template = CvTemplate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cv_template_params
      params.require(:cv_template).permit(:link, :user_id, :published)
    end
end
