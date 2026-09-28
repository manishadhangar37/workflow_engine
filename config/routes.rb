Rails.application.routes.draw do
 
  get "up" => "rails/health#show", as: :rails_health_check

  resources :workflows

post ":trigger_token",to: "workflow_triggers#create", as: :workflow_trigger
  
end
