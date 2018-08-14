class Job < ApplicationRecord
  belongs_to :successful_application

  def self.all_unfilled
    where(filled: false)
  end

  def method_name
    
  end
end
