ActiveAdmin.register Memory do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
	permit_params :id, :name, :memory_date, :photo

	form multipart: true do |f|
    f.inputs "Memory" do
      f.input :name
      f.input :memory_date, :as => :datepicker
			f.input :photo, :as => :file, :label => "Image"
    end
    f.actions
  end

end
