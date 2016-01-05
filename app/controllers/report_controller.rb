class ReportController < ApplicationController
  def index
  end
  def show

  	@query = "#{params[:q]}"
  	@desde = "#{params[:desde]}"
  	@hasta = "#{params[:hasta]}"

    @liquidations = Liquidation.avanzado(@query,"#{params[:qcamion]}").rango(@desde, @hasta)
    
  end
end
