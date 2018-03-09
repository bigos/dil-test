class SchedulerDatesController < ApplicationController
  def index
    if params['q']
      dfrom = 'from_lteq' # must match query in the index
      if params['q'][dfrom].blank?
        params['q'][dfrom] = Time.zone.now.strftime('%Y-%m-%d')
        logger.info("*** modified params q #{dfrom} #{params[:q][dfrom].inspect}")
      end

      dto = 'to_gteq'  # must match query in the index
      if params['q'][dto].blank?
        params['q'][dto] = Time.zone.now.strftime('%Y-%m-%d')
        logger.info("*** modified params q #{dto} #{params[:q][dto].inspect}")
      end

    end
    @q = SchedulerDate.ransack(params[:q])


    # or use `to_a.uniq` to remove duplicates (can also be done in the view):
    @scheduler_dates = @q.result
                         .includes(:projects_tracking_unit)
                         .paginate(page: params[:page], per_page: 10)
  end
end
