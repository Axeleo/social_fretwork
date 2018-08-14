musos_info = [
    {
        name: "The Indoor Kites",
        email:"idk@socialfretwork.com",
        password: "muso",
        bio: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam." ,
        base_price: "$#{rand(300)} p/h" ,
        location: "Melbourne,VIC" 
    },
    {
        name: "Hot Shame",
        email:"hs@socialfretwork.com",
        password: "muso",
        bio: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam." ,
        base_price: "$#{rand(300)} p/h" ,
        location: "Truganina,VIC" 
    },
    {
        name: "Electric Moccassins",
        email:"em@socialfretwork.com",
        password: "muso",
        bio: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam." ,
        base_price: "$#{rand(300)} p/h" ,
        location: "Wollert,VIC" 
    },
    {
        name: "Boogers II esq.",
        email:"b2e@socialfretwork.com",
        password: "muso",
        bio: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam." ,
        base_price: "$#{rand(300)} p/h" ,
        location: "Ballarat,VIC" 
    },
    {
        name: "Hot Property",
        email:"hp@socialfretwork.com",
        password: "muso",
        bio: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam." ,
        base_price: "$#{rand(300)} p/h" ,
        location: "Melbourne,VIC" 
    },
    {
        name: "Sleeper Service",
        email:"ss@socialfretwork.com",
        password: "muso",
        bio: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam." ,
        base_price: "$#{rand(300)} p/h" ,
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