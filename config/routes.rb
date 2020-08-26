Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/students" => "students#index"
    post "/students" => "students#create"
    get "/students/:id" => "students#show"

    patch "/students/:id" => "students#update"
    delete "/students/:id" => "students#destroy"

    
    get "/experiences" => "experiences#index"
    post "/experiences" => "experiences#create"
    get "/experiences/:id" => "experiences#show"
    patch "/experiences/:id" => "experiences#update"
    delete "/experiences/:id" => "experiences#destroy"

    get "/skills" => "skills#index"
    post "/skills" => "skills#create"
    get "/skills/:id" => "skills#show"
    patch "/skills/:id" => "skills#update"
    delete "/skills/:id" => "skills#destroy"
    
    get "/education" => "educations#index"
    post "/education" => "educations#create"
    get "/education/:id" => "educations#show"
    put "/education/:id" => "educations#update"
    delete "/education/:id" => "educations#destroy"

  end
end
