# frozen_string_literal: true
class ClientsController < ApplicationController
  def index
    @client = Client.all
  end
  def show
    @client = Client.find(params[:id])
  end
  def new
    @client = Client.new
  end
  def create
    @client = Client.new(client_strong_params)
    if @client.save
      flash[:notice] = 'Client Details are Saved'
      redirect_to clients_path
    end
  end
  private
  def client_strong_params
    params.require(:client).permit(:name, :contact_no, :age, :email, :address)
  end
end
