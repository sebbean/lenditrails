class WelcomeController < ApplicationController

  # 301 permanent redirect to /speakers
  def go_to_speakers
    redirect_to speakers_path, :status => 301
  end

  # 301 permanent redirect to /
  def go_to_root
    redirect_to root_path, :status => 301
  end



end