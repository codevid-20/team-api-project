Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/students" => "students#index"
    get "/students/:id" => "students#show"

    get "/experiences" => "experiences#index"
    post "/experiences" => "experiences#create"
    get "/experiences/:id" => "experiences#show"
    patch "/experiences/:id" => "experiences#update"
    delete "/experiences/:id" => "experiences#destroy"
  end
end
