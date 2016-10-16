Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources(:invoices, only: :index)
      resources(:summary, only: []) do
        collection do
          get(:months)
          get(:categories)
        end
      end
    end
  end
end
