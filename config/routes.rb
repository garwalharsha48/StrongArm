Rails.application.routes.draw do
  


  get 'admin/dashboard'

  get 'admin/newsletter'

  %w[v22 ergohug our_process about].each do |page|
    get(page => "static_pages##{page}", :as => page.to_sym)
  end

  root 'home#index'


end
