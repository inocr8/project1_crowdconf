class BookingsController < ApplicationController

    before_action :load_booking, except:[:index, :create, :new]
    before_action :authenticate_user!
    load_and_authorize_resource

    def index
      if can? :manage, :all
        @bookings = Booking.all
        @users = User.all
      else
        @bookings = Booking.where(user_id: current_user)
      end
    end

    def new
      @booking = Booking.new
    end

    def create
      @booking = current_user.bookings.new(booking_params)

      # if @booking.event.capacity_left < params[:tickets_booked].to_i
      #   redirect_to new_booking_path, notice: 'Unfortunately there are only #{@booking.event.capacity_left} tickets available'
      # end

      if @booking.event.capacity_sold_out?
        redirect_to new_booking_path, notice: 'Unfortunately this event has sold out, please try another event'
      else
        respond_to do |format|
          if @booking.save
            format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
          else
            format.html { render :new }
          end
        end
      end
    end

    def show
    end

    def edit
    end

    def update
      respond_to do |format|
        if @booking.update(booking_params)
          format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      respond_to do |format|
        if @booking.destroy
          format.html { redirect_to bookings_path, notice: 'Booking was successfully cancelled.' }
        end
      end
    end

    private
      def booking_params
        params.require(:booking).permit(:event_id, :tickets_booked, :success)
      end

    def load_booking
      @booking = Booking.find(params[:id])
    end
  end
