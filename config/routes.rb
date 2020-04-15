Rails.application.routes.draw do
  root "pages#home"
  # get 'pages/home'
  get "/pages/blog/new", to: "blogs#new"
  get 'pages/projects', as: "projects"
  get 'pages/contact', as: "contact"
  get 'pages/blog', to: "blogs#index", as: "blogs"
  post "/pages/blog", to: "blogs#create"
  get "/pages/blog/:id", to: "blogs#show"
  delete "/pages/blog/:id", to: "blogs#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
