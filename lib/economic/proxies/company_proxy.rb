require 'economic/proxies/entity_proxy'

module Economic
  class CompanyProxy < EntityProxy
    def get
      response = session.request entity_class.soap_action('Get')

      if response.present?
        find(response)
      end
    end
  end
end
