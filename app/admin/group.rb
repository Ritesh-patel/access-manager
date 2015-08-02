ActiveAdmin.register Group do
  #Overide the index, remove unwanted columns from the index table and format it
  index do
    #show select box
    selectable_column

    #link to single group
    column :name do |group|
      link_to group.name, admin_group_path( group )
    end

    #Created date
    column :created_at do |group|
      distance_of_time_in_words( Time.now, group.created_at )
    end

    #last update date
    column :updated_at do |group|
      distance_of_time_in_words( Time.now, group.updated_at )
    end
  end
end
