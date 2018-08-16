module ApplicationHelper
    def clean_date_time(dt)
        dt.strftime("%A %d %m %Y - %l:%M %p")
    end
end
