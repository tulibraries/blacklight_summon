

module Blacklight::Summon
  class Repository < Blacklight::AbstractRepository
    def find(id, params = {})
      search params.merge(id: id, fields: blacklight_config.show_fields.values)
    end


    ##
    # Execute a search against Summon
    #
    def search(params = {})
      params = params.to_hash unless params.is_a?(Hash)
      summon = ::Summon::Service.new Rails.configuration.summon
      search = summon.search('s.q' => params.fetch(:q, ''))
      docs = search.documents

      response_opts = {
          facet_counts: 2,
          numFound: search.record_count,
          document_model: blacklight_config.document_model,
          blacklight_config: blacklight_config
      }.with_indifferent_access

      blacklight_config.response_model.new(docs, params, response_opts)

    end
  end
end