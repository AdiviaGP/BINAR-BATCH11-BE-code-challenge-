class CarsController < ApplicationController


    def index
      @cars = Car.all
    end

    def show
      @car = Car.find(params[:id])
    end

    def new
      @car = Car.new
    end

    def create
      @car = Car.new(car_params)
        if @car.save
          @car.image.attach(params[:car][:image])
          redirect_to cars_path
        else
          render :new
        end
    end

    def edit
      @car = Car.find(params[:id])
    end

    def update
      @car = Car.find(params[:id])
        if @car.update(car_params)
          redirect_to cars_path
        else
          render :edit
        end
    end

    def destroy
      @car = Car.find(params[:id])
      @car.destroy
      redirect_to cars_path
    end

    private
      def car_params
        params.require(:car).permit(:name, :description, :price, :category_id, :brand_id, :image, :stock)
      end


end
