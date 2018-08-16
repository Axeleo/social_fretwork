class ApplicationController < ActionController::Base
    include LoginsHelper
    include ApplicationHelper
    include JobApplicationsHelper
    include JobsHelper
end
