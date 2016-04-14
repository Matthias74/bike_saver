class PagesController < ApplicationController
skip_before_action :authenticate_user!, only: :home

  def home
    if current_user == nil
      render 'pages/home'
    elsif current_user.saver == true
      redirect_to repairs_path
    else
      render 'pages/home'
    end
  end
end
