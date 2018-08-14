class AddJobApplicationToJobs < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :job_application, foreign_key: true
  end
end
