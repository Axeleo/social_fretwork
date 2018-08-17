class Job < ApplicationRecord

  has_many :job_applications
  belongs_to :host
  belongs_to :job_application, optional: true

  def self.vacant
    where(filled: false)
  end

  def self.completed
    where(complete: true)
  end

  def self.non_completed
    where(complete: false)
  end

  def muso
    !!job_application ? job_application.muso : false
  end
end
