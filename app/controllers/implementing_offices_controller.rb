class ImplementingOfficesController < ApplicationController
  before_action :set_implementing_office, only: [:show, :edit, :update, :destroy]

  # GET /implementing_offices
  # GET /implementing_offices.json
  def index
    @implementing_offices = ImplementingOffice.all
  end

  # GET /implementing_offices/1
  # GET /implementing_offices/1.json
  def show
  end

  # GET /implementing_offices/new
  def new
    @implementing_office = ImplementingOffice.new
  end

  # GET /implementing_offices/1/edit
  def edit
  end

  # POST /implementing_offices
  # POST /implementing_offices.json
  def create
    @implementing_office = ImplementingOffice.new(implementing_office_params)

    respond_to do |format|
      if @implementing_office.save
        format.html { redirect_to @implementing_office, notice: 'Implementing office was successfully created.' }
        format.json { render :show, status: :created, location: @implementing_office }
      else
        format.html { render :new }
        format.json { render json: @implementing_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /implementing_offices/1
  # PATCH/PUT /implementing_offices/1.json
  def update
    respond_to do |format|
      if @implementing_office.update(implementing_office_params)
        format.html { redirect_to @implementing_office, notice: 'Implementing office was successfully updated.' }
        format.json { render :show, status: :ok, location: @implementing_office }
      else
        format.html { render :edit }
        format.json { render json: @implementing_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /implementing_offices/1
  # DELETE /implementing_offices/1.json
  def destroy
    @implementing_office.destroy
    respond_to do |format|
      format.html { redirect_to implementing_offices_url, notice: 'Implementing office was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_implementing_office
      @implementing_office = ImplementingOffice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def implementing_office_params
      params.fetch(:implementing_office, {})
    end
end
