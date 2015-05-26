Rails.application.routes.draw do
  


  devise_for :admins, :skip => :registrations
  resources :newsletter_emails

  get 'mailing-list', to: 'newsletter_emails#new'
	get 'thank-you', to: 'newsletter_emails#thank_you'

  get 'admin/dashboard'

  get 'admin/newsletter'

  %w[v22 ergohug our_process about].each do |page|
    get(page => "static_pages##{page}", :as => page.to_sym)
  end

  root 'home#index'


end
