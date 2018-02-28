class TrackingUnitsController < ApplicationController

  def index
    if params['q']
      params_changed = false
      dk = 'scheduler_dates_from_gteq'
      if params['q'][dk].blank?
        params['q'][dk] = Time.zone.now.strftime('%Y-%m-%d')
        params_changed = true
      end
      dk = 'scheduler_dates_to_lteq'
      if params['q'][dk].blank?
        params['q'][dk] = Time.zone.now.strftime('%Y-%m-%d')
        params_changed = true
      end

      logger.info("*** modified params #{params.inspect}") if params_changed
    end


    @q = TrackingUnit.ransack(params[:q])


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
