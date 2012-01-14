require 'economic/entity'

module Economic
  class Company < Entity
    has_properties :name, :number, :base_currency_handle, :address1, :postal_code, :city, :fax_number, :contact, :web_site, :ci_number
    
    def handle
      Handle.new({:name => @name})
    end
    
  end
end