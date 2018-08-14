class EstudiantesController < ApplicationController
    before_action :set_estudiante, only: [:show, :update, :destroy]

      # GET /todos
  def index
    @estudiantes = Estudiante.all
    json_response(@estudiantes)
  end

  # POST /todos
  def create
    @estudiante = Estudiante.create!(estudiante_params)
    json_response(@estudiante, :created)
  end

  # GET /todos/:id
  def show
    json_response(@estudiante)
  end


  def estudiante_params
    # whitelist params
    params.permit(:nombre, :documento, :direccion, :email)

  end

  def set_estudiante
    @estudiante = Estudiante.find(params[:id])
  end
end

