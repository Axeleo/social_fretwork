# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
FileUtils.rm_rf(Dir.glob(File.join(Rails.root, "/public/uploads/")))
MusoImg.destroy_all
MusoReview.destroy_all
Job.all.each do |j| j.update_attribute(:job_application, nil); end
JobApplication.destroy_all
MusoEmbed.destroy_all
Muso.destroy_all
Job.destroy_all
Host.destroy_all
MusoEmbed.destroy_all
require_relative "seeds/muso"
require_relative "seeds/host"
require_relative "seeds/job"
require_relative "seeds/embed"
require_relative "seeds/muso_review"
require_relative "seeds/muso_img"
