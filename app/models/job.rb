class Job < ApplicationRecord
  belongs_to :successful_application
  belongs_to :host
  def self.all_unfilled
    where(filled: false)
  end

  def method_name
    
  end
end
