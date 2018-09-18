class BookingsController < ApplicationController

  def new
    # @flight = Flight.find(params[:flight_id])
    # @bookings = Array.new(params[:number_of_passengers].to_i) {Booking.new(flight_id:params[:flight_id])}
    if !params[:flight_id].empty?
      @booking = Booking.new(flight_id:params[:flight_id])
    else
      @booking = Booking.new(flight_id:params[:booking][:flight])
    end
    @number_of_passengers = params[:number_of_passengers].to_i
    # @passengers = Array.new(@number_of_passengers.to_i) { @booking.flight.passengers.build }

  end

  def create
    index = 0
    error = false
    @passengers = []
    @bookings = []
    params[:booking][:passengers].each do |passenger|
      @passengers << Passenger.where(passenger_params(index)).first_or_initialize
      @bookings << Flight.find(params[:booking][:flight]).bookings.build(passenger:@passengers[index])
      index += 1
    end
    #Booking.transaction do
    if (@passengers + @bookings).all?(&:valid?)
      @passengers.each(&:save)
      @bookings.each(&:save)
      redirect_to bookings_path
    else
      redirect_back(fallback_location: root_path)
    end

  end

  def index
    @bookings = Booking.all
  end

  private

  def passenger_params(index)
    params.require(:booking).require(:passengers).require(index.to_s).permit(:name, :email)
    # params.require(:booking).permit(passengers: [ :name, :email])
  end
end
