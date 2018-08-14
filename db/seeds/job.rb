def rand_int(from, to)
  rand_in_range(from, to).to_i
end

def rand_budget(from, to)
  rand_in_range(from, to).round(0)
end

def rand_price(from, to)
  rand_in_range(from, to).round(2)
end

def rand_time(from, to=Time.now)
  Time.at(rand_in_range(from.to_f, to.to_f))
end

def rand_in_range(from, to)
  rand * (to - from) + from
end

budget_low = 50
budget_high = 1000
host_id_low = 1
host_id_high = 9

days_before = 2.days.ago

melbourne_suburbs = ["Northcote", 'Preston', 'St Kilda', 'Brunswick', 'Abbostford', 'Coburg', 'Melbounre CBD', 'Thorunbury', 'Richmond', 'Brunswick', 'Collingwood', 'Fairfeild']


jobs_info = [
  {
    title: "Co-op Cafe Opening",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Mic & Kim's Wedding",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Friday Night @ the Tote",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Katrina's Birthday",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Thursday night 80's",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Bar Mitzvah",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Bar Open",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Jazz set Downtown",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Cornerstone Hotel Saturday Night",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Larry's Pub Trivia",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Sunday Sesh @ Grub Cafe",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Saturday Party",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "18th Birthday",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "80th Birthday",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Buck's Party",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "50th Birthday",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Tom & Lisa's Wedding",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "40th Birthday Party",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Dj set at Bartronica",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Smooth Jazz @ the Bank",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Mexican tequila bar opening",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Thursday Arvo cafe slot",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Sam's Birthday",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Street Festival",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "Cultrual festival",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "DJ set @ SubClub",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  },
  {
    title: "DJ set @ Cream",
    description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
    location: "#{melbourne_suburbs.sample}",
    budget: "#{rand_budget(budget_low, budget_high)}",
    host: Host.all.sample,
    date_time: rand_time(days_before),
    filled: false,
    complete: false
  }
]

jobs_info.each do |job|
  j = Job.new(
    title: job[:title],
    description: job[:description],
    location: job[:location],
    budget: job[:budget],
    host: job[:host],
    date_time: job[:date_time],
    filled: job[:filled],
    complete: job[:complete]
  )
  j.save
end
