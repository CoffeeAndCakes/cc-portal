ActiveAdmin.register News do
  permit_params :date, :text

  form do |f|
    f.inputs "new details" do
      f.input :date
      f.input :text
    end
    f.actions
  end
end
