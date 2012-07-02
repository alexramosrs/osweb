#encoding: utf-8
class SessionsController < ApplicationController

  skip_before_filter :require_login, :only => [:new, :create]

  def new
  end

  def create
    user = Usuario.find_by_login(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id]  = user.id
      session[:username] = user.login
      redirect_to root_url
    else
      flash[:notice] = "Usuário ou senha inválida!"
      redirect_to login_url
    end
  end

  def destroy
    session[:user_id]  = nil
    session[:username] = nil
    redirect_to root_url
  end
end

