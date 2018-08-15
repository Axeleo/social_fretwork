embeds_info = []
100.times do
  embeds_info << {
    url: "https://www.youtube.com/watch?v=mE9H1bW-zQ4"
  }
end
# embeds_info = [
#   ,
#   {
#     url: "https://www.youtube.com/watch?v=oVME_l4IwII"
#   },
#   {
#     url: "https://www.youtube.com/watch?v=NCtzkaL2t_Y"
#   },
#   {
#     url: "https://www.youtube.com/watch?v=VdQY7BusJNU"
#   },
#   {
#     url: "https://www.youtube.com/watch?v=EPOIS5taqA8"
#   },
#   {
#     url: "https://www.youtube.com/watch?v=IHXK9glwFBg"
#   }
# ]

Muso.all.each_with_index do |muso, idx|
  me = MusoEmbed.new(
    url: embeds_info[idx][:url],
    muso_id: muso.id
  )
  me.save
end