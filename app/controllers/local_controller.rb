class LocalController < ApplicationController
  before_action :set_local, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @local = Local.all
    respond_with(@local)
  end

  def show
    respond_with(@local)
  end

  def new
    @local = Local.new
    respond_with(@local)
  end

  def edit
  end

  def create
    @local = Local.new(local_params)
    @local.save
    respond_with(@local)
  end

  def update
    @local.update(local_params)
    respond_with(@local)
  end

  def destroy
    @local.destroy
    respond_with(@local)
  end

  private
    def set_local
      @local = Local.find(params[:id])
    end

    def local_params
      params.require(:local).permit(:DIRECCION_LOCAL)
    end
end
