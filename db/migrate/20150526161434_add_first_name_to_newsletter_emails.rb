class AddFirstNameToNewsletterEmails < ActiveRecord::Migration
  def change
    add_column :newsletter_emails, :first_name, :string
  end
end
