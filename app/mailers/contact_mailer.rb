class ContactMailer < ActionMailer::Base
  default from: 'noreply@marketingscience.co'

  def contact_form(name, email, msg)
    @name = name
    @email = email
    @msg = msg
    mail to: 'jason@marketingscience.co', subject: 'Contact us form '
  end

end
