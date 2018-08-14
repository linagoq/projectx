class LugaresController < ApplicationController
    before_action :set_profesor, only: [:show, :update, :destroy]

      # GET /todos
  def index
    @lugares =Lugar.all
    json_response(@lugares)
  end

  # POST /todos
  def create
    @lugares = Lugar.create!(estudiante_params)
    json_response(@lugares, :created)
  end

  # GET /todos/:id
  def show
    json_response(@lugar)
  end


  def lugar_params
    # whitelist params
    params.permit(:nombre)

  end

  def set_lugar
    @lugar= Lugar.find(params[:id])
  end
end
