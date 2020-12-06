class CcardsController < ApplicationController
  before_action :set_ccard, only: [:show, :edit, :update, :destroy]

  # GET /ccards
  # GET /ccards.json
  def index
    @ccards = Ccard.all
  end

  # GET /ccards/1
  # GET /ccards/1.json
  def show
  end

  # GET /ccards/new
  def new
    @ccard = Ccard.new
  end

  # GET /ccards/1/edit
  def edit
  end

  # POST /ccards
  # POST /ccards.json
  def create
    @ccard = Ccard.new(ccard_params)

    respond_to do |format|
      if @ccard.save
        format.html { redirect_to @ccard, notice: 'Ccard was successfully created.' }
        format.json { render :show, status: :created, location: @ccard }
      else
        format.html { render :new }
        format.json { render json: @ccard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ccards/1
  # PATCH/PUT /ccards/1.json
  def update
    respond_to do |format|
      if @ccard.update(ccard_params)
        format.html { redirect_to @ccard, notice: 'Ccard was successfully updated.' }
        format.json { render :show, status: :ok, location: @ccard }
      else
        format.html { render :edit }
        format.json { render json: @ccard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ccards/1
  # DELETE /ccards/1.json
  def destroy
    @ccard.destroy
    respond_to do |format|
      format.html { redirect_to ccards_url, notice: 'Ccard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ccard
      @ccard = Ccard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ccard_params
      params.require(:ccard).permit(:card_issuer, :card_number, :name_on_card, :exp_date, :customer_id)
    end
end
