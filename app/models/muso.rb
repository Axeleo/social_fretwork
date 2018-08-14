class Muso < ApplicationRecord
    has_many :muso_imgs
    has_secure_password
    validates :email, :name,uniqueness: { case_sensitive: false }
    validates  :email, :name, presence: true

end
