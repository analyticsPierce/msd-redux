class ContactMailer < ActionMailer::Base
  default from: 'robot@marketingscience.co'

  def contact_form(name, email, msg)
    @name = name
    @email = email
    @msg = msg
    mail to: 'jason@marketingscience.co', subject: 'Contact us form '
  end

end
