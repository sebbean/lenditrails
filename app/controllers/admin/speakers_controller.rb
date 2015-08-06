module Admin
class SpeakersController < BaseController
  def index
    @speakers = Speaker.all
    respond_with @speakers
  end
  def edit
    @speaker = Speaker.find(params[:id])

  end
  def update
    @speaker = Speaker.find(params[:id])
    if @speaker.update speaker_params
      redirect_back_or_to(speakers_path, notice: 'Updated speaker')
    else
      flash.now[:alert] = 'failed to update speaker'
      render :edit
    end
  end

  protected
  def speaker_params
    params.require(:speaker).permit(:first_name)
  end
end
end