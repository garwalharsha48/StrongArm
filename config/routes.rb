Rails.application.routes.draw do
  


  resources :contact_forms

  devise_for :admins, :skip => :registrations
  resources :newsletter_emails

  get 'mailing-list', to: 'newsletter_emails#new'
	get 'thank-you', to: 'newsletter_emails#thank_you'

  get 'admin/dashboard'

  get 'admin/newsletter'
  get 'disclaimer', :to => 'static_pages#disclaimer'

  %w[v22 ergohug our_process about flx].each do |page|
    get(page => "static_pages##{page}", :as => page.to_sym)
  end

  root 'home#index'


end
