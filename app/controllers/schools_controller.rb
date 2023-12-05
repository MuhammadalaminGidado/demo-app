class SchoolsController < ApplicationController
  # before_action :set_school, only: %i[ show edit update destroy ]

  def index
    @schools = School.all
  end

  def show
  end

  def new
    @school = School.new
  end

  def create
    @school = School.new(school_params)

      if @school.save
          redirect_to schools_path
      end
  end

    private
    def set_school
      @school = School.find(params[:id])
    end

    def school_params
      params.require(:school).permit(:name, :city, :state, :no_of_students)
    end
end
