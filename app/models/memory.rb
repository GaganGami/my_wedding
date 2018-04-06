class Memory < ApplicationRecord
	has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "", :path => "/memory/:id_partition/:style/:filename"
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
