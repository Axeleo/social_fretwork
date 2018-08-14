class ChangePasswordFieldName < ActiveRecord::Migration[5.2]
  def change
    rename_column :hosts, :pasword_digest, :password_digest
  end
end
