class SchedulerDatesController < ApplicationController
  def index

    @q = SchedulerDate.ransack(params[:q])


    # or use `to_a.uniq` to remove duplicates (can also be done in the view):
    @scheduler_dates = @q.result.includes(:projects_tracking_unit)
                        .paginate(page: params[:page], per_page: 10)
  end
end
