class ReportController < ApplicationController
  def index
  end
  def show

  	@tipo = "#{params[:tipo]}"
  	@query = "#{params[:q]}"
  	@desde = "#{params[:desde]}"
  	@hasta = "#{params[:hasta]}"
  	if @tipo =2
  		@liquidations = Liquidation.camion(@query).rango(@desde, @hasta)
  	end
    if @tipo = 1
      @liquidations = Liquidation.chofer(@query).rango(@desde, @hasta)
    end
  end
end
