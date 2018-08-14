  

host_info = [ 
  {
    name: "Davis Long",
    email: "eqecyxo-7880@yopmail.com",
    password: "pudding"
  },
  {
    name: "Caitlin Sharp",
    email: "upazeddo-3409@yopmail.com",
    password: "pudding"
  },
  {
    name: "Gregory Rose",
    email: "teditobe-5484@yopmail.com",
    password: "pudding"
  },
  {
    name: "The Pinnacle",
    email: "kareweddu-6954@yopmail.com",
    password: "pudding"
  },
  {
    name: "Cafe Romantica",
    email: "emuzattac-0999@yopmail.com",
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