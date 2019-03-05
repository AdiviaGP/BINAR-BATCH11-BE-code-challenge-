class RentsController < ApplicationController

  require 'action_view'
  include ActionView::Helpers::DateHelper

    def index
      @rents = Rent.all
    end

    def show
      @rent = Rent.find(params[:id])
    end

    def new
      @rent = Rent.new
    end

    def create
      @rent = Rent.new(rent_params)
        if @rent.save
          redirect_to rents_path
        else
          render :new
        end
    end

    def edit
      @rent = Rent.find(params[:id])
    end

    def update
      @rent = Rent.find(params[:id])
        if @rent.update(rent_params)
          redirect_to rents_path
        else
          render :edit
        end
    end

    def destroy
      @rent = Rent.find(params[:id])
      @rent.destroy
      redirect_to rents_path
    end

    private
      def rent_params
        params.require(:rent).permit(:tenantName, :car_id, :pickup, :dropoff, :duration, :fine, :cost)
      end



end
