  

host_info = [ 
  {
    name: "Davis Long",
    email: "miss_reah@live.com.au",
    password: "pudding"
  },
  {
    name: "Caitlin Sharp",
    email: "leah.eramo@gmail.com",
    password: "pudding"
  },
  {
    name: "Gregory Rose",
    email: "leah_eramo@hotmail.com",
    password: "pudding"
  },
  {
    name: "The Pinnacle",
    email: "leah.eramo@rea-group.com",
    password: "pudding"
  },
  {
    name: "Cafe Romantica",
    email: "nope-no-trash@outlook.com",
    password: "pudding"
  },
  {
    name: "The Green Sheep Pub",
    email: "udoffatto-7115@yopmail.com",
    password: "pudding"
  },
  {
    name: "Rebecca Wao",
    email: "lurrevalaju-1975@yopmail.com",
    password: "pudding"
  }
]

host_info.each do |host|
  h = Host.new(
    name: host[:name],
    email: host[:email],
    password: host[:password]
    )
  h.save
end