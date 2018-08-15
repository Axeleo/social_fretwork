class Job < ApplicationRecord
  has_many :job_applications
  belongs_to :host
  belongs_to :job_application
  belongs_to :muso_review
  belongs_to :muso

  def self.all_open
    where(filled: false, complete: false)
  end

  def method_name
    
  end
end
