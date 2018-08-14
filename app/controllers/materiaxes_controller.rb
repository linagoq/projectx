class MateriaxesController < ApplicationController
    before_action :set_materiax, only: [:show, :update, :destroy]

      # GET /todos
  def index
    @materiaxes = Materiax.all
    json_response(@materiaxes)
  end

  # POST /todos
  def create
    @materiax = Materiax.create!(materiax_params)
    json_response(@materiax, :created)
  end

  # GET /todos/:id
  def show
    json_response(@materiax)
  end


  def materiax_params
    # whitelist params
    params.permit(:nombre)

  end

  def set_materiax
    @materiax = Materiax.find(params[:id])
  end
end
