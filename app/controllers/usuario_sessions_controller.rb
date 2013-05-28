class UsuarioSessionsController < ApplicationController
  def new
    @session = Session.new
  end
  def create
    if @session = login(params[:username],params[:password])
      redirect_back_or_to(cita_path, message: "Login exitoso")
    else
      flash.now[:alert] = "Algo salio mal con el login"
      render action: :new
    end
  end
  def destroy
      logout
      redirect_to(:cita, message: "logged out")
  end
end


