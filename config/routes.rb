Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/phones" => "phones#index"
  get "/phones/new" => "phones#new"
  post "/phones" => "phones#create"
  get "/phones/:id" => "phones#show"

end
