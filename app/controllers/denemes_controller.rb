class DenemesController < ApplicationController
  before_action :set_deneme, only: [:show, :edit, :update, :destroy]

  # GET /denemes
  # GET /denemes.json
  def index
    @denemes = Deneme.all
  end

  # GET /denemes/1
  # GET /denemes/1.json
  def show
  end

  # GET /denemes/new
  def new
    @deneme = Deneme.new
  end

  # GET /denemes/1/edit
  def edit
  end

  # POST /denemes
  # POST /denemes.json
  def create
    @deneme = Deneme.new(deneme_params)

    respond_to do |format|
      if @deneme.save
        format.html { redirect_to @deneme, notice: 'Deneme was successfully created.' }
        format.json { render :show, status: :created, location: @deneme }
      else
        format.html { render :new }
        format.json { render json: @deneme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /denemes/1
  # PATCH/PUT /denemes/1.json
  def update
    respond_to do |format|
      if @deneme.update(deneme_params)
        format.html { redirect_to @deneme, notice: 'Deneme was successfully updated.' }
        format.json { render :show, status: :ok, location: @deneme }
      else
        format.html { render :edit }
        format.json { render json: @deneme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /denemes/1
  # DELETE /denemes/1.json
  def destroy
    @deneme.destroy
    respond_to do |format|
      format.html { redirect_to denemes_url, notice: 'Deneme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deneme
      @deneme = Deneme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deneme_params
      params.require(:deneme).permit(:AD, :SOYAD, :YAS, :EMAİL, :ADRES)
    end
end
