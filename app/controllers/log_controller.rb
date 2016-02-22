class LogController < ApplicationController
  before_action :set_log, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @log = Log.all
    respond_with(@log)
  end

  def show
    respond_with(@log)
  end

  def new
    @log = Log.new
    respond_with(@log)
  end

  def edit
  end

  def create
    @log = Log.new(log_params)
    @log.save
    respond_with(@log)
  end

  def update
    @log.update(log_params)
    respond_with(@log)
  end

  def destroy
    @log.destroy
    respond_with(@log)
  end

  private
    def set_log
      @log = Log.find(params[:id])
    end

    def log_params
      params.require(:log).permit(:ID_USUARIO_LOG, :ID_TUPLA_LOG, :NEW_VALUE_LOG, :OLD_VALUE_LOG, :FECHA_LOG, :NOMBRE_TABLA_LOG)
    end
end
