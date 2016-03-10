ActiveAdmin.register User do
  permit_params :name, :twitter_id, :message, :icon
end
