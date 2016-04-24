class AsignaturesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_asignature, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @asignatures = Asignature.all
    respond_with(@asignatures)
  end

  def show
    respond_with(@asignature)
  end

  def new
    @asignature = Asignature.new
    respond_with(@asignature)
  end

  def edit
  end

  def create
    @asignature = Asignature.new(asignature_params)
    @asignature.save
    respond_with(@asignature)
  end

  def update
    @asignature.update(asignature_params)
    respond_with(@asignature)
  end

  def destroy
    @asignature.destroy
    respond_with(@asignature)
  end

  private
    def set_asignature
      @asignature = Asignature.find(params[:id])
    end

    def asignature_params
      params.require(:asignature).permit(:tittle, :semester)
    end
end
