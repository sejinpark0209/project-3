class ApartmentsController < ApplicationController

  def index

    #compare the name with your parameter
    @apartments = Apartment.where(["name iLIKE ?","%#{params[:search]}%"])

  end

  def new
    @apartment = Apartment.new
  end

  def show
    # @user = User.find(params[:id])
    apartment_id = params[:id]
    @apartment = Apartment.find_by_id(apartment_id)
    render :show
  end

  def edit
    @apartment = Apartment.find(params[:id])
  end

  def update
    @apartment = Apartment.find(params[:id])
    @apartment.update_attributes(apt_params)
    flash[:notice] = "Apartment successfully updated!"
    redirect_to apartments_url
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


# <% num = 0 %>
# <% count = 1 %>
# <% apartment.post.each do |post| %>
# <% count += 1 %>
# <% num += post.p_ref_fee %>
# <% end %>
# <%= num / count - 1%>
# <%= count %>


  private

  def apt_params
    params.require(:apartment).permit(:name, :address,:state, :ref_fee, :num_post)
  end

end
