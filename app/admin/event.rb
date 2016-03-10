ActiveAdmin.register Event do
  permit_params :title, :contents, :date, :image_url
end
