class ReportController < ApplicationController
  def index
  end
  def show

  	@query = "#{params[:q]}"
  	@desde = "#{params[:desde]}"
  	@hasta = "#{params[:hasta]}"
  	@driver = Driver.find(@query)
    @liquidations = Liquidation.avanzado(@query,"#{params[:qcamion]}").rango(@desde, @hasta)
    
  end
end
