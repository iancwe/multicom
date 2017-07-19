# setting up constraints on certain classes of subdomains
class SubdomainConstraint
  def self.matches?(request)
    subdomains = %w{ 'www','admin' }
    request.subdomain.present? && !subdomains.include?(request.subdomain)
  end
end

Rails.application.routes.draw do
  constraints SubdomainConstraint do
    resources :staffs
    # root 'staffs#new'
  end
  resources :companies
  resources :users
  root 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
