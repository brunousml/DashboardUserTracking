class UsertracksController < ApplicationController
  before_action :set_usertrack, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token, :except => [:update]

  # GET /usertracks
  # GET /usertracks.json
  def index
    @usertracks = Usertrack.all
  end

  # GET /usertracks/1
  # GET /usertracks/1.json
  def show
  end

  # GET /usertracks/new
  def new
    @usertrack = Usertrack.new
  end

  # GET /usertracks/1/edit
  def edit
  end

  # POST /usertracks
  # POST /usertracks.json
  def create
    @usertrack = Usertrack.new(usertrack_params)

    respond_to do |format|
      if @usertrack.save
        format.html { redirect_to @usertrack, notice: 'Usertrack was successfully created.' }
        format.json { render :show, status: :created, location: @usertrack }
      else
        format.html { render :new }
        format.json { render json: @usertrack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usertracks/1
  # PATCH/PUT /usertracks/1.json
  def update
    respond_to do |format|
      if @usertrack.update(usertrack_params)
        format.html { redirect_to @usertrack, notice: 'Usertrack was successfully updated.' }
        format.json { render :show, status: :ok, location: @usertrack }
      else
        format.html { render :edit }
        format.json { render json: @usertrack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usertracks/1
  # DELETE /usertracks/1.json
  def destroy
    @usertrack.destroy
    respond_to do |format|
      format.html { redirect_to usertracks_url, notice: 'Usertrack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usertrack
      @usertrack = Usertrack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usertrack_params
      params.require(:usertrack).permit(:guid, :url, :datetime)
    end
end
