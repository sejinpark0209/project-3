class ApartmentsController < ApplicationController

  def index
    @apartments = Apartment.all
  end

  def new
    @apartment = Apartment.new
  end

  def show
    @user = User.find(params[:id])
    apartment_id = params[:id]
    @apartment = Apartment.find_by_id(apartment_id)
    render :show
  end

  def create
    apartment = Apartment.create(apt_params)
    redirect_to apartments_path
  end

  def destroy
    apartment_id = params[:id]
    @apartment = Apartment.find_by_id(apartment_id)
    @apartment.destroy
    respond_to do |format|
      format.html { redirect_to apartments_url, notice: 'List was successfully destroyed.' }
      format.json { head :no_content }
    end
  end





  private

  def apt_params
    params.require(:apartment).permit(:name, :address, :city, :state, :ref_fee, :num_post)
  end

end
