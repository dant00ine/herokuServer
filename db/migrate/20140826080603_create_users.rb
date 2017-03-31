class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email

      t.string :password_hash
      t.string :password_salt

      t.boolean :email_verification, :default => false
      t.string :verification_code

      t.string :api_authtoken
      t.datetime :authtoken_expiry

      t.timestamps
    end
  end
end
