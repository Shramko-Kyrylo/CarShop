ActiveAdmin.register Car do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :brand, :title, :img, :description, :price, :quantity, :preview_img
  #
  # or
  #
  # permit_params do
  #   permitted = [:brand, :title, :img, :description, :price, :quantity]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs
    f.inputs do
      f.input :preview_img, as: :file
    end        
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
  
end
