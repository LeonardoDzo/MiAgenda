class DutiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_duty, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @duties = Duty.all
    @asignatures = Asignature.all
    respond_with(@duties)
  end

  def show
    respond_with(@duty)
  end

  def new
    @duty = Duty.new
    respond_with(@duty)
  end

  def edit
  end

  def create
    @duty = current_user.duties.new(duty_params)
    @duty.save
    redirect_to duties_path
    
  
  end

  def update
    @duty.update(duty_params)
    redirect_to duties_path
  end

  def destroy
    @duty.destroy
    respond_with(@duty)
  end

  private
    def set_duty
      @duty = Duty.find(params[:id])
    end

    def duty_params
      params.require(:duty).permit(:tittle, :body, :date_of_delivery,:priority, )
    end
end
