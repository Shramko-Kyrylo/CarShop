class OrdersController < InheritedResources::Base

  private

    def order_params
      params.require(:order).permit(:brand, :title, :email, :phone)
    end

end
