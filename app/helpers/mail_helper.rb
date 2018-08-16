module MailHelper
    def send_mail
        template = %{
            <html>
              <body>
                <h1> HELLO </H1>

                testing
              </body>
            </html>
          }.gsub(/^  /, '')
        Pony.mail({
            :to => "leah.eramo@gmail.com",
            :via => :smtp,
            :via_options => {
                :address => 'smtp.gmail.com',
                :port => '587',
                :enable_starttls_auto => true,
                :user_name => ENV['GMAILSMTPUSER'],
                :password => ENV['GMAILSMTPPASS'],
                :authentication => :plain, # :plain, :login, :cram_md5, no auth by default
                :domain => "localhost.localdomain" # the HELO domain provided by the client to the server
            },
            :subject => "hello", 
            :html_body => render(:partial => @partial)
            #,:locals => {:my_var => @item }
        })
    end
end
