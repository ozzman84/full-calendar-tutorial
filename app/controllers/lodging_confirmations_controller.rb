class LodgingConfirmationsController < ApplicationController
  def index
    #list of lodgingconfirmations
    #current_user
    puts params
    @lodging = Lodging.find(params[:lodging_id])
    @lodging_confirmations = @lodging.lodging_confirmations.each_with_object({}) { |e,confirmations| confirmations[e.date] = e }
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
