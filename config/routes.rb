Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/students" => "students#index"
    post "/students" => "students#create"
    get "/students/:id" => "students#show"

    get "/experiences" => "experiences#index"
    post "/experiences" => "experiences#create"
    get "/experiences/:id" => "experiences#show"
    patch "/experiences/:id" => "experiences#update"
    delete "/experiences/:id" => "experiences#destroy"

    get "/education" => "educations#index"
    post "/education" => "educations#create"
    get "/education/:id" => "educations#show"
    put "/education/:id" => "educations#update"
    delete "/education/:id" => "educations#destroy"

    get "/capstone" => "capstones#index"
    post "/capstone" => "capstones#create"
    get "/capstone/:id" => "capstones#show"
    put "/capstone/:id" => "capstones#update"
    delete "/capstone/:id" => "capstones#destroy"
  end
end
