class AddCarToActiveStorageAttachments < ActiveRecord::Migration[7.1]
  def change
    add_reference :active_storage_attachments, :car, null: false, foreign_key: true
  end
end
