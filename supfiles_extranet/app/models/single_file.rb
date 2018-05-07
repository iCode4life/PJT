class SingleFile < ApplicationRecord
  belongs_to :repository
  has_attached_file :file_file
  do_not_validate_attachment_file_type :file_file
end
