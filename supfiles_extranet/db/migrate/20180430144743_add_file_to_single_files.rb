class AddFileToSingleFiles < ActiveRecord::Migration[5.2]
  def up
    add_attachment :single_files, :file_file
  end

  def down
    remove_attachment :single_files, :file_file
  end
end
