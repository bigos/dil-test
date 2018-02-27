class TractingUnitsController < ApplicationController
  def index
    @tracking_units = TrackingUnit.paginate(page: params[:page])
  end

  def show
  end

  private

  # only allow white listed parameters

  def person_params
    params.require(:tracking_unit).permit(:page)
  end
end
