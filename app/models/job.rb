class Job < ApplicationRecord
  has_many :job_applications
  belongs_to :host

  def self.all_unfilled
    where(filled: false)
  end

  def method_name
    
  end
end
