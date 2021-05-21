class Cellphone < ApplicationRecord
  mount_uploader :image, FileUploader
end
