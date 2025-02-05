class SpeakersController < ApplicationController
  before_action :set_speaker, only: [:show, :edit, :update, :destroy]


  def index
    redirect_to ('/europe/2015/speakers'), :status => 301
  end

  def eu15
    @eu15_speakers = Speaker.where(conference: 'LendIt Europe 2015')
    @speakers = @eu15_speakers.where(featured: false)
    @featured = @eu15_speakers.where(featured: true)
  end

  def usa15
    @usa15_speakers = Speaker.where(conference: 'LendIt USA 2015')
    @vip = @usa15_speakers.where(keynote_vip: true)
    # @vip.sort_by! { |speaker| speaker['last_name'] }

    @speakers = @usa15_speakers.where(keynote_vip: nil)
    @speakers.sort_by! { |speaker| [ speaker['last_name'], speaker['first_name'] ] }

    @past_speakers = Speaker.where(conference: 'LendIt USA 2014')
  end

  # GET /speakers
  # GET /speakers.json
  def eu14
    @europe_speakers = Speaker.where(conference: 'LendIt Europe 2014')
    @europe_speakers.sort_by! { |speaker| [ speaker['last_name'], speaker['first_name'] ] }
    @past_speakers = Speaker.where(conference: 'LendIt USA 2014')
  end

  def usa14
    @usa14_speakers = Speaker.where(conference: 'LendIt USA 2014').where(featured: false)
  end


  # GET /speakers/1
  # GET /speakers/1.json
  def show
  end

  # GET /speakers/new
  def new
    @speaker = Speaker.new
  end

  # GET /speakers/1/edit
  def edit
  end

  # POST /speakers
  # POST /speakers.json
  def create
    @speaker = Speaker.new(speaker_params)

    respond_to do |format|
      if @speaker.save
        format.html { redirect_to @speaker, notice: 'Speaker was successfully created.' }
        format.json { render :show, status: :created, location: @speaker }
      else
        format.html { render :new }
        format.json { render json: @speaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speakers/1
  # PATCH/PUT /speakers/1.json
  def update
    respond_to do |format|
      if @speaker.update(speaker_params)
        format.html { redirect_to @speaker, notice: 'Speaker was successfully updated.' }
        format.json { render :show, status: :ok, location: @speaker }
      else
        format.html { render :edit }
        format.json { render json: @speaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speakers/1
  # DELETE /speakers/1.json
  def destroy
    @speaker.destroy
    respond_to do |format|
      format.html { redirect_to speakers_url, notice: 'Speaker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speaker
      @speaker = Speaker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def speaker_params
      params.require(:speaker).permit(:first_name, :last_name, :suffix, :company_name, :title, :bio, :img_url, :twitter, :email)
    end
end
