class AirlineOperatorsController < ApplicationController
  before_action :set_airline_operator, only: [:show, :edit, :update, :destroy]

  # GET /airline_operators
  # GET /airline_operators.json
  def index
    @airline_operators = AirlineOperator.all
  end

  # GET /airline_operators/1
  # GET /airline_operators/1.json
  def show
  end

  # GET /airline_operators/new
  def new
    @airline_operator = AirlineOperator.new
  end

  # GET /airline_operators/1/edit
  def edit
  end

  # POST /airline_operators
  # POST /airline_operators.json
  def create
    @airline_operator = AirlineOperator.new(airline_operator_params)

    respond_to do |format|
      if @airline_operator.save
        format.html { redirect_to @airline_operator, notice: 'Airline operator was successfully created.' }
        format.json { render :show, status: :created, location: @airline_operator }
      else
        format.html { render :new }
        format.json { render json: @airline_operator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airline_operators/1
  # PATCH/PUT /airline_operators/1.json
  def update
    respond_to do |format|
      if @airline_operator.update(airline_operator_params)
        format.html { redirect_to @airline_operator, notice: 'Airline operator was successfully updated.' }
        format.json { render :show, status: :ok, location: @airline_operator }
      else
        format.html { render :edit }
        format.json { render json: @airline_operator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airline_operators/1
  # DELETE /airline_operators/1.json
  def destroy
    @airline_operator.destroy
    respond_to do |format|
      format.html { redirect_to airline_operators_url, notice: 'Airline operator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airline_operator
      @airline_operator = AirlineOperator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def airline_operator_params
      params.fetch(:airline_operator, {})
    end
end
