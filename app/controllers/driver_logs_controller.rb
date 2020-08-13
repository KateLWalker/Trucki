class DriverLogsController < ApplicationController
  before_action :set_driver_log, only: [:show, :edit, :update, :destroy]

  # GET /driver_logs
  # GET /driver_logs.json
  def index
    @driver_logs = DriverLog.all
  end

  # GET /driver_logs/1
  # GET /driver_logs/1.json
  def show
  end

  # GET /driver_logs/new
  def new
    @driver_log = DriverLog.new
  end

  # GET /driver_logs/1/edit
  def edit
  end

  # POST /driver_logs
  # POST /driver_logs.json
  def create
    @driver_log = DriverLog.new(driver_log_params)

    respond_to do |format|
      if @driver_log.save
        format.html { redirect_to @driver_log, notice: 'Driver log was successfully created.' }
        format.json { render :show, status: :created, location: @driver_log }
      else
        format.html { render :new }
        format.json { render json: @driver_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /driver_logs/1
  # PATCH/PUT /driver_logs/1.json
  def update
    respond_to do |format|
      if @driver_log.update(driver_log_params)
        format.html { redirect_to @driver_log, notice: 'Driver log was successfully updated.' }
        format.json { render :show, status: :ok, location: @driver_log }
      else
        format.html { render :edit }
        format.json { render json: @driver_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /driver_logs/1
  # DELETE /driver_logs/1.json
  def destroy
    @driver_log.destroy
    respond_to do |format|
      format.html { redirect_to driver_logs_url, notice: 'Driver log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driver_log
      @driver_log = DriverLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def driver_log_params
      params.require(:driver_log).permit(:date, :trip_number, :start_odometer, :end_odometer, :miles)
    end
end
