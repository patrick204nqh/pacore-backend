require "sidekiq/web"

Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  mount RailsAdmin::Engine => "/admin", as: "rails_admin"
  post "/graphql", to: "graphql#execute"

  if Rails.env.development?
    mount Sidekiq::Web => "/sidekiq"
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
end
