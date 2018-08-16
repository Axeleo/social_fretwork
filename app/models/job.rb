class Job < ApplicationRecord
  has_many :job_applications
  belongs_to :host
  belongs_to :job_application, optional: true

  def self.all_open
    where(filled: false, complete: false)
  end

end
