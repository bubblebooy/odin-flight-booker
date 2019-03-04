class FlightsController < ApplicationController
  def index
    params[:flight].nil? ? @flight = Flight.new(departure_airport_id:1): @flight = Flight.new(flight_params)

    @departure_airport_options = Airport.all.map{ |u| [ "#{u.name} (#{u.code})", u.id ] }
    @departure_airport_options.unshift ["ANY",nil]
    @arrival_airport_options = Airport.all.map{ |u| [ "#{u.name} (#{u.code})", u.id ] }
    @arrival_airport_options.unshift ["ANY",nil]
    @departure_time_options = Flight.select(:departure_time).map{ |u| [ u.departure_time.to_formatted_s(:month_day_comma_year), u.departure_time.to_date ] }
    #.group('DATE(departure_time)')  // does not work with PG
    @departure_time_options.unshift [nil,nil]
    @flights = Flight.all

    if !params[:flight].nil?
      @flights = @flights.where(departure_airport: params[:flight][:departure_airport_id]) unless params[:flight][:departure_airport_id].empty?
      @flights = @flights.where(arrival_airport: params[:flight][:arrival_airport_id]) unless params[:flight][:arrival_airport_id].empty?
      @flights = @flights.where("DATE(departure_time) = ?" , params[:flight][:departure_time].to_date) unless params[:flight][:departure_time].empty?
    end


  end

  def show
  end

  private

  def flight_params
    params.require(:flight).permit(:departure_airport_id, :arrival_airport_id,:departure_time)

  end
end

# .group('DATE(departure_time)')
