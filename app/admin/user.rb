ActiveAdmin.register User do
  #Overide the index, remove unwanted columns from the index table and format it
  index do
    #column :email
    selectable_column
    column :email do |user|
      link_to user.email, admin_user_path(user)
    end

    column :created_at do |user|
      distance_of_time_in_words(Time.now, user.created_at)
    end
    column :current_sign_in_at do |user|
      distance_of_time_in_words(Time.now, user.current_sign_in_at)
    end
    column :last_sign_in_at do |user|
      distance_of_time_in_words(Time.now, user.last_sign_in_at)
    end
    column :sign_in_count
    actions
  end
  filter :email
  filter :admin
  filter :created_at
  filter :current_sign_in_at
  filter :last_sign_in_at

  #Overide the edit user screen, remove unwanted fields
  form do |f|
    f.inputs "User Details" do
      f.input :email
    end
    f.actions
  end
end
