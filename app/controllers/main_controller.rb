class MainController < ApplicationController
  def login

  end

  def index

  end

  def verifica_usuario()
    username = params[:username].to_s
    password = params[:password].to_s

    account = Account.find_by(:username => username, :password => password)

    user_exists = !account.nil?

    respond_to do |format|
      format.html
      format.json { render json: {user_exists: user_exists} }
    end
  end
end
