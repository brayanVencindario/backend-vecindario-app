class OrderMailer < ApplicationMailer

    def new_order_email(salesEmails,projectEmail,lead)
        @projectEmail=projectEmail
        @lead=lead
        @emails = salesEmails
        @emails.map { |emails|
        mail(to:emails, subject: "You got a new order!")
    }
    
       
      end
      
end
