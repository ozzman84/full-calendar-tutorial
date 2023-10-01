class LodgingConfirmationsController < ApplicationController
  def index
    #list of lodgingconfirmations
    #current_user
    puts params
    @lodging = Lodging.find(params[:lodging_id])
    @lodging_confirmations = LodgingConfirmation.all
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end
end
