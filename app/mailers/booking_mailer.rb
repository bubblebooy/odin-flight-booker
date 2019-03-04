class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.thank_you.subject
  #
  def thank_you(booking)
    @booking = booking
    email = @booking.passenger.email
    mail(to: email ,  subject: 'Thank You from booking you flight')
  end
end
