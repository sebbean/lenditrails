class SponsorsController < ApplicationController
  before_action :set_sponsor, only: [:show, :edit, :update, :destroy]

  # GET /sponsors
  # GET /sponsors.json
  def index
    @europe_sponsors = Sponsor.where(conference: 'LendIt Europe 2014')
    @platinum = @europe_sponsors.where(sponsor_level: 'Platinum')
    @gold = @europe_sponsors.where(sponsor_level: 'Gold')
    @silver = @europe_sponsors.where(sponsor_level: 'Silver')
    @bronze = @europe_sponsors.where(sponsor_level: 'Bronze')
    @cocktails = @europe_sponsors.where(sponsor_level: 'Cocktail Party')
    @smartphone = @europe_sponsors.where(sponsor_level: 'Smartphone App')
    @breakfast = @europe_sponsors.where(sponsor_level: 'Breakfast')
    @exhibitor = @europe_sponsors.where(sponsor_level: 'Exhibitor')
    @other_sponsors = @europe_sponsors.where(sponsor_level: 'Other')
    @past_sponsors = Sponsor.where(conference: 'LendIt 2014')
  end

  def europe_sponsors
    @europe_sponsors = Sponsor.where(conference: 'LendIt Europe 2014')
    @platinum = @europe_sponsors.where(sponsor_level: 'Platinum')
    @gold = @europe_sponsors.where(sponsor_level: 'Gold')
    @silver = @europe_sponsors.where(sponsor_level: 'Silver')
    @bronze = @europe_sponsors.where(sponsor_level: 'Bronze')
    @cocktails = @europe_sponsors.where(sponsor_level: 'Pre-Conference Cocktails')
    @other_sponsors = @europe_sponsors.where(sponsor_level: 'Other')
    @past_sponsors = Sponsor.where(conference: 'LendIt 2014')
  end

  def test
    @europe_sponsors = Sponsor.where(conference: 'LendIt Europe 2014')
    @platinum = @europe_sponsors.where(sponsor_level: 'Platinum')
    @gold = @europe_sponsors.where(sponsor_level: 'Gold')
    @silver = @europe_sponsors.where(sponsor_level: 'Silver')
    @bronze = @europe_sponsors.where(sponsor_level: 'Bronze')
    @cocktails = @europe_sponsors.where(sponsor_level: 'Cocktail Party')
    @smartphone = @europe_sponsors.where(sponsor_level: 'Smartphone App')
    @exhibitor = @europe_sponsors.where(sponsor_level: 'Exhibitor')
    @other_sponsors = @europe_sponsors.where(sponsor_level: 'Other')
    @past_sponsors = Sponsor.where(conference: 'LendIt 2014')
  end

  # GET /sponsors/1
  # GET /sponsors/1.json
  def show
  end

  # GET /sponsors/new
  def new
    @sponsor = Sponsor.new
  end

  # GET /sponsors/1/edit
  def edit
  end

  # POST /sponsors
  # POST /sponsors.json
  def create
    @sponsor = Sponsor.new(sponsor_params)

    respond_to do |format|
      if @sponsor.save
        format.html { redirect_to @sponsor, notice: 'Sponsor was successfully created.' }
        format.json { render :show, status: :created, location: @sponsor }
      else
        format.html { render :new }
        format.json { render json: @sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sponsors/1
  # PATCH/PUT /sponsors/1.json
  def update
    respond_to do |format|
      if @sponsor.update(sponsor_params)
        format.html { redirect_to @sponsor, notice: 'Sponsor was successfully updated.' }
        format.json { render :show, status: :ok, location: @sponsor }
      else
        format.html { render :edit }
        format.json { render json: @sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sponsors/1
  # DELETE /sponsors/1.json
  def destroy
    @sponsor.destroy
    respond_to do |format|
      format.html { redirect_to sponsors_url, notice: 'Sponsor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sponsor
      @sponsor = Sponsor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sponsor_params
      params.require(:sponsor).permit(:company_name, :logo_img, :description, :site_url)
    end
end
