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
    }
]

musos_info.each do |muso|
    m = Muso.new(
        name: muso[:name],
        email: muso[:email],
        password: muso[:password],
        bio: muso[:bio] ,
        base_price: muso[:base_price] ,
        location: muso[:location] 
    )
    m.save
end