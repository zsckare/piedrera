class WelcomeController < ApplicationController
  def index
  	@liquidations = Liquidation.last(5)
  end
end
