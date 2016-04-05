class PagesController < ApplicationController
skip_before_action :authenticate_user!, only: :home

  def home
    if current_user.saver
      #changer ce reder pour le mettre sur le dashboard
      #render 'repairs/new'
    else
      render 'pages/home'
    end
  end
end
