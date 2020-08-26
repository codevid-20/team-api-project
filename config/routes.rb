Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/students" => "students#index"

    get "/education" => "educations#index"
    post "/education" => "educations#create"
    get "/education/:id" => "educations#show"
    put "/education/:id" => "educations#update"
    delete "/education/:id" => "educations#destroy"
  end
end
