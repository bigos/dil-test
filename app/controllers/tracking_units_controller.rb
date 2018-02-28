class TrackingUnitsController < ApplicationController

  def index
    if params['q']
      dfrom = 'scheduler_dates_from_lteq' # must match query in the index
      if params['q'][dfrom].blank?
        params['q'][dfrom] = Time.zone.now.strftime('%Y-%m-%d')
        logger.info("*** modified params q #{dfrom} #{params[:q][dfrom].inspect}")
      end

      dto = 'scheduler_dates_to_gteq'  # must match query in the index
      if params['q'][dto].blank?
        params['q'][dto] = Time.zone.now.strftime('%Y-%m-%d')
        logger.info("*** modified params q #{dto} #{params[:q][dto].inspect}")
      end

    end


    @q = SchedulerDate.ransack(params[:q])


    # or use `to_a.uniq` to remove duplicates (can also be done in the view):
    @tracking_units = @q.result.includes(:brand)
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
