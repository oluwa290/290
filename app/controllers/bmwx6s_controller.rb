class Bmwx6sController < ApplicationController
  before_action :set_bmwx6, only: [:show, :edit, :update, :destroy]

  # GET /bmwx6s
  # GET /bmwx6s.json
  def index
    @bmwx6s = Bmwx6.all
  end

  # GET /bmwx6s/1
  # GET /bmwx6s/1.json
  def show
  end

  # GET /bmwx6s/new
  def new
    @bmwx6 = Bmwx6.new
  end

  # GET /bmwx6s/1/edit
  def edit
  end

  # POST /bmwx6s
  # POST /bmwx6s.json
  def create
    @bmwx6 = Bmwx6.new(bmwx6_params)

    respond_to do |format|
      if @bmwx6.save
        format.html { redirect_to @bmwx6, notice: 'Bmwx6 was successfully created.' }
        format.json { render :show, status: :created, location: @bmwx6 }
      else
        format.html { render :new }
        format.json { render json: @bmwx6.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bmwx6s/1
  # PATCH/PUT /bmwx6s/1.json
  def update
    respond_to do |format|
      if @bmwx6.update(bmwx6_params)
        format.html { redirect_to @bmwx6, notice: 'Bmwx6 was successfully updated.' }
        format.json { render :show, status: :ok, location: @bmwx6 }
      else
        format.html { render :edit }
        format.json { render json: @bmwx6.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bmwx6s/1
  # DELETE /bmwx6s/1.json
  def destroy
    @bmwx6.destroy
    respond_to do |format|
      format.html { redirect_to bmwx6s_url, notice: 'Bmwx6 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bmwx6
      @bmwx6 = Bmwx6.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bmwx6_params
      params.require(:bmwx6).permit(:make, :model, :year)
    end
end
