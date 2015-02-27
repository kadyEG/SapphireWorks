ActiveAdmin.register User do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :created_at, :updated_at, :email, :encrypted_password, :reset_password_token , :reset_password_sent_at , :remember_created_at , :sign_in_count , :current_sign_in_at , :last_sign_in_at , :current_sign_in_ip , :last_sign_in_ip , :profile_picture_file_name , :profile_picture_content_type , :profile_picture_file_size , :profile_picture_updated_at , :authorized
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
