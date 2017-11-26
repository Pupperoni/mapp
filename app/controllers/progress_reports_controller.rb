class ProgressReportsController < ApplicationController
  before_action :set_progress_report, only: [:show, :edit, :update, :destroy]

  # GET /progress_reports
  # GET /progress_reports.json
  def index
    @progress_reports = ProgressReport.all
  end

  # GET /progress_reports/1
  # GET /progress_reports/1.json
  def show
  end

  # GET /progress_reports/new
  def new
    @progress_report = ProgressReport.new
  end

  # GET /progress_reports/1/edit
  def edit
  end

  # POST /progress_reports
  # POST /progress_reports.json
  def create
    @progress_report = ProgressReport.new(progress_report_params)

    respond_to do |format|
      if @progress_report.save
        format.html { redirect_to @progress_report, notice: 'Progress report was successfully created.' }
        format.json { render :show, status: :created, location: @progress_report }
      else
        format.html { render :new }
        format.json { render json: @progress_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /progress_reports/1
  # PATCH/PUT /progress_reports/1.json
  def update
    respond_to do |format|
      if @progress_report.update(progress_report_params)
        format.html { redirect_to @progress_report, notice: 'Progress report was successfully updated.' }
        format.json { render :show, status: :ok, location: @progress_report }
      else
        format.html { render :edit }
        format.json { render json: @progress_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /progress_reports/1
  # DELETE /progress_reports/1.json
  def destroy
    @progress_report.destroy
    respond_to do |format|
      format.html { redirect_to progress_reports_url, notice: 'Progress report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_progress_report
      @progress_report = ProgressReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def progress_report_params
      params.fetch(:progress_report, {})
    end
end
