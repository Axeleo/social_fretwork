class JobApplication < ApplicationRecord
  belongs_to :job
  belongs_to :muso

  def self.all_not_rejected
    where(rejected: false)
  end
end
