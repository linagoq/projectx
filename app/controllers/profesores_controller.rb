class ProfesoresController < ApplicationController

    before_action :set_profesor, only: [:show, :update, :destroy]

      # GET /todos
  def index
    @profesores =Profesor.all
    json_response(@profesores)
  end

  # POST /todos
  def create
    @profesores = Profesor.create!(estudiante_params)
    json_response(@profesores, :created)
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
