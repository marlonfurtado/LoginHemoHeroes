Rails.application.routes.draw do

  devise_for :user_blood_banks,
             controllers: { sessions: 'user_blood_banks/sessions',
                            registrations: 'user_blood_banks/registrations' }

  root 'welcome#index'

  resources :addresses
  resources :hospital_necessities
  resources :hospitals

  get '/necessidadehospital', to: 'hospital_necessities#index'


  # root 'welcome#index'


  # Routes for components in construction
  get '/components', to: 'components#index'

end
