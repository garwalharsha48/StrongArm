json.array!(@newsletter_emails) do |newsletter_email|
  json.extract! newsletter_email, :id, :email, :product
  json.url newsletter_email_url(newsletter_email, format: :json)
end
