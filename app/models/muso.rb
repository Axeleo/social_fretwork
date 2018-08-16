class Muso < ApplicationRecord
    acts_as_taggable
    
    mount_uploader :avatar, AvatarUploader

    has_many :muso_imgs
    has_many :job_applications
    has_many :muso_reviews

    has_secure_password

    validates :email, :name,uniqueness: { case_sensitive: false }
    validates  :email, :name, presence: true

    include PgSearch
    pg_search_scope :search_by_name, :against => [:name]
    pg_search_scope :search_by_location, :against => [:location]
    
end
