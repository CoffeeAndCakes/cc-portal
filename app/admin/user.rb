ActiveAdmin.register User do
  permit_params :name, :twitter_id, :message, :icon

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
      f.input :twitter_id
      f.input :message
      f.input :icon
    end
    f.actions
  end
end
