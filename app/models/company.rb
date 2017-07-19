class Company < ApplicationRecord
  after_create :create_tenant
  belongs_to :user

  def self.current
    company = Company.find_by subdomain:Apartment::Tenant.current
    raise ::Apartment::TenantNotFound, "Unable to find company" unless company
    company
  end

  private

    def create_tenant
      Apartment::Tenant.create(subdomain)
    end
end
