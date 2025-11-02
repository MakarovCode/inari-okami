class InterestController < ApplicationController

  def index
    
  end

  def create
    interest = Client.new permit_params

    if interest.save
      redirect_to thanks_interest_index_path, notice: "Interest created successfully"
    else
      render "index", alert: "Interest not created"
    end
  end

  def thanks
  end

  private

  def permit_params
    params.require(:interest).permit(:name, :email, :phone)
  end
end
