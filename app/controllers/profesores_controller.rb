class profesorsController < ApplicationController

    before_action :set_profesor, only: [:show, :update, :destroy]

      # GET /todos
  def index
    @profesors =Profesor.all
    json_response(@profesors)
  end

  # POST /todos
  def create
    @profesor = Profesor.create!(profesor_params)
    json_response(@profesor, :created)
  end

  # GET /todos/:id
  def show
    json_response(@profesor)
  end


  def profesor_params
    # whitelist params
    params.permit(:nombre, :documento, :direccion, :email)

  end

  def set_profesor
    @profesor= Profesor.find(params[:id])
  end
end
