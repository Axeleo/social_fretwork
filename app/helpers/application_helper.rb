module ApplicationHelper
    def clean_date_time(dt)
        dt.strftime("%Y %m %d")
    end
end
