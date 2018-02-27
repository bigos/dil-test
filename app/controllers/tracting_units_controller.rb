class TractingUnitsController < ApplicationController

  # finish me
  # https://github.com/activerecord-hackery/ransack
  # https://github.com/activerecord-hackery/ransack_demo/blob/master/app/models/user.rb

  def index
    @q = TrackingUnit.ransack(params[:q])


    # or use `to_a.uniq` to remove duplicates (can also be done in the view):
    @tracking_units = @q.result.includes(:articles).page(params[:page]).to_a.uniq

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
