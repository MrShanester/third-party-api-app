Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/holidays/:day" => "application#index"
  get "/holidays" => "application#show"
end
