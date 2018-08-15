class AddRejectedApplicaitonsToJobApplciations < ActiveRecord::Migration[5.2]
  def change
    add_column :job_applications, :rejected, :boolean
  end
end
