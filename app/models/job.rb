class Job < ApplicationRecord
  has_many :job_applications
  belongs_to :host

  def self.all_open
    where(filled: false, complete: false)
  end

  def method_name
    
  end
end
