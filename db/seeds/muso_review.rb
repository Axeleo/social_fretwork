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

  20.times do
    @muso = Muso.all.sample
    @job = Job.create(
        title: "DJ set @ Somewhere IDK",
        description: "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odit, natus, asperiores hic laudantium nostrum voluptatum nam obcaecati animi quisquam eum vitae dolor ea quibusdam nesciunt? Architecto sunt veniam aliquid numquam.",
        location: "#{melbourne_suburbs.sample}",
        budget: "#{rand_budget(budget_low, budget_high)}",
        host: Host.all.sample,
        date_time: rand_time(days_before),
        filled: true,
        complete: true
    )
    @job_application = JobApplication.create(
        job: @job,
        muso: @muso
    )
    @job.job_application = @job_application
    @job.save
    MusoReview.create(
        job: @job,
        rating: rand(5.0) + 1,
        comment: "Lorem ipsum dolor, sit amet consectetur adipisicing elit.",
        muso: @muso,
        created_at: rand_time(days_before)
    )
  end
