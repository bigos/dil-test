class TrackingUnitsController < ApplicationController

  def index


    @q = SchedulerDate.ransack(params[:q])


    # or use `to_a.uniq` to remove duplicates (can also be done in the view):
    @tracking_units = TrackingUnit
                        .all
                        .paginate(page: params[:page], per_page: 10)


  end

  def show
    @tracking_unit = TrackingUnit.find params[:id]
    @scheduler_dates = @tracking_unit.scheduler_dates.order('scheduler_dates.to DESC')
  end

  private

  # only allow white listed parameters

  def person_params
    params.require(:tracking_unit).permit(:page)
  end
end
