class AptsController < ApplicationController
  before_action :set_apt, only: [:show, :edit, :update, :destroy]

  # GET /apts
  # GET /apts.json
  def index
    @apts = Apt.all
  end

  # GET /apts/1
  # GET /apts/1.json
  def show
  end

  # GET /apts/new
  def new
    @apt = Apt.new
  end

  # GET /apts/1/edit
  def edit
  end

  # POST /apts
  # POST /apts.json
  def create
    @apt = Apt.new(apt_params)

    respond_to do |format|
      if @apt.save
        format.html { redirect_to @apt, notice: 'Apt was successfully created.' }
        format.json { render :show, status: :created, location: @apt }
      else
        format.html { render :new }
        format.json { render json: @apt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apts/1
  # PATCH/PUT /apts/1.json
  def update
    respond_to do |format|
      if @apt.update(apt_params)
        format.html { redirect_to @apt, notice: 'Apt was successfully updated.' }
        format.json { render :show, status: :ok, location: @apt }
      else
        format.html { render :edit }
        format.json { render json: @apt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apts/1
  # DELETE /apts/1.json
  def destroy
    @apt.destroy
    respond_to do |format|
      format.html { redirect_to apts_url, notice: 'Apt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apt
      @apt = Apt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apt_params
      params.require(:apt).permit(:name, :time)
    end
end
