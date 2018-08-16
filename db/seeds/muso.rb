tag_options = [
    "rock","pop","birthdays","lgbti friendly","seniors friendly","metal","ska","indie","twee","accoustic","brass","solo artist","syth","italian","baltic","accordion","weddings","glam","folk","future funk","funk","slap-bass","trance","EDM","techno","electronic","DJ","celtic","kids"
]


musos_info = [
    {
        name: "The Indoor Kites",
        email:"leah.eramo@gmail.com",
        password: "muso",
        bio: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam." ,
        base_price: rand(300) ,
        location: "Melbourne,VIC" 
    },
    {
        name: "Hot Shame",
        email:"leah_eramo@hotmail.com",
        password: "muso",
        bio: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam." ,
        base_price: rand(300) ,
        location: "Truganina,VIC" 
    },
    {
        name: "Electric Moccassins",
        email:"leah.eramo@rea-group.com",
        password: "muso",
        bio: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam." ,
        base_price: rand(300) ,
        location: "Wollert,VIC" 
    },
    {
        name: "Boogers II esq.",
        email:"miss_reah@live.com.au",
        password: "muso",
        bio: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam." ,
        base_price: rand(300) ,
        location: "Ballarat,VIC" 
    },
    {
        name: "Hot Property",
        email:"nope-no-trash@outlook.com",
        password: "muso",
        bio: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam." ,
        base_price: rand(300) ,
        location: "Melbourne,VIC" 
    },
    {
        name: "Sleeper Service",
        email:"ss@socialfretwork.com",
        password: "muso",
        bio: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam." ,
        base_price: rand(300) ,
        location: "Melbourne,VIC" 
    },
    {
        name: "Creedence Clearwater Revival",
        email:"ccr@socialfretwork.com",
        password: "muso",
        bio: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam." ,
        base_price: rand(300) ,
        location: "Wallan,VIC" 
    },
    {
        name: "Flock of Seagulls",
        email:"fos@socialfretwork.com",
        password: "muso",
        bio: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam." ,
        base_price: rand(300) ,
        location: "St Kilda,VIC" 
    },
    {
        name: "The Beatles",
        email:"tb@socialfretwork.com",
        password: "muso",
        bio: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam." ,
        base_price: rand(300) ,
        location: "Port Melbourne,VIC" 
    },
    {
        name: "The Offspring",
        email:"to@socialfretwork.com",
        password: "muso",
        bio: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam." ,
        base_price: rand(300) ,
        location: "Reservoir,VIC" 
    },
    {
        name: "Vanilla Ice",
        email:"vi@socialfretwork.com",
        password: "muso",
        bio: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam." ,
        base_price: rand(300) ,
        location: "Bayswater,VIC" 
    }
]

musos_info.each do |muso|
    m = Muso.create(
        name: muso[:name],
        email: muso[:email],
        password: muso[:password],
        bio: muso[:bio] ,
        base_price: muso[:base_price] ,
        location: muso[:location] 
    )
    m.tag_list.add tag_options.sample(10)
    image_src = File.join(Rails.root, "/stock_images/img_#{rand(39)}.jpg")
    src_file = File.new(image_src)
   
    m.avatar = src_file
    m.save
    
end