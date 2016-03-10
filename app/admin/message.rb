ActiveAdmin.register Message do
  permit_params :message, :by, :posted_by
end
