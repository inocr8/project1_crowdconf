class VenuesController < ApplicationController
 
   before_action :load_venue, except:[:index, :create, :new]
   before_action :authenticate_user!
   load_and_authorize_resource

   def index
     @venues = Venue.all
   end

   def new
     @venue = Venue.new
   end

   def create
     @venue = Venue.new(venue_params)

     respond_to do |format|
       if @venue.save
         format.html { redirect_to @venue, notice: 'Venue was successfully created.' }
       else
         format.html { render :new }
       end
     end
   end

   def show
   end

   def edit
   end

   def update
     respond_to do |format|
       if @venue.update(venue_params)
         format.html { redirect_to @venue, notice: 'Venue was successfully updated.' }
       else
         format.html { render :edit }
       end
     end
   end

   def destroy
     @venue.destroy
     redirect_to(venues_path)
   end

   private
     def venue_params
       params.require(:venue).permit(:name, :description, :location, :capacity, :colour, :venue_image)
     end

   def load_venue
     @venue = Venue.find(params[:id])
   end
 end