class Company < ApplicationRecord
  after_create :create_tenant
  belongs_to :user

  private

    def create_tenant
      Apartment::Tenant.create(subdomain)
    end
end
