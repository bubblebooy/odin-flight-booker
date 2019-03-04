# Preview all emails at http://localhost:3000/rails/mailers/booking_mailer
class BookingMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/booking_mailer/thank_you
  def thank_you
    BookingMailer.thank_you(Booking.first)
  end

end
