class BmWsController < ApplicationController
  before_action :set_bmw, only: [:show, :edit, :update, :destroy]

  # GET /bmws
  # GET /bmws.json
  def index
    @bmws = Bmw.all
  end

  # GET /bmws/1
  # GET /bmws/1.json
  def show
  end

  # GET /bmws/new
  def new
    @bmw = Bmw.new
  end

  # GET /bmws/1/edit
  def edit
  end

  # POST /bmws
  # POST /bmws.json
  def create
    @bmw = Bmw.new(bmw_params)

    respond_to do |format|
      if @bmw.save
        format.html { redirect_to @bmw, notice: 'Bmw was successfully created.' }
        format.json { render :show, status: :created, location: @bmw }
      else
        format.html { render :new }
        format.json { render json: @bmw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bmws/1
  # PATCH/PUT /bmws/1.json
  def update
    respond_to do |format|
      if @bmw.update(bmw_params)
        format.html { redirect_to @bmw, notice: 'Bmw was successfully updated.' }
        format.json { render :show, status: :ok, location: @bmw }
      else
        format.html { render :edit }
        format.json { render json: @bmw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bmws/1
  # DELETE /bmws/1.json
  def destroy
    @bmw.destroy
    respond_to do |format|
      format.html { redirect_to bmws_url, notice: 'Bmw was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bmw
      @bmw = Bmw.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bmw_params
      params.require(:bmw).permit(:X6, :make, :model, :year)
    end
end
