# frozen_string_literal: true
class ClientsController < ApplicationController

  # layout 'nav'
  def index
    @client = Client.all
  end

  def show
    @client = set_client_id
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_strong_params)
    if @client.save
      flash[:notice] = 'Client Details are Saved'
      redirect_to clients_path
    else
      render :new
    end
  end

  def edit
    @client = set_client_id
  end

  def update
    @client = set_client_id
    if @client.update(client_strong_params)
      flash[:notice] = 'Client Details are Updated'
      redirect_to clients_path
    else
      render :'clients/edit'
    end
  end

  private

  def set_client_id
    @client = Client.find(params[:id])
  end

  def client_strong_params
    params.require(:client).permit(:name, :contact_no, :age, :email, :address, :image[])
  end

end
