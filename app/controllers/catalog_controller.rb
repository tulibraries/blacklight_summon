# -*- encoding : utf-8 -*-
class CatalogController < ApplicationController

  include Blacklight::Catalog

  configure_blacklight do |config|
    # Class for sending and receiving requests from a search index
    config.repository_class = Blacklight::Summon::Repository

    # Class for converting Blacklight's url parameters to into request parameters for the search index
    config.search_builder_class = Blacklight::Summon::SearchBuilder

    # Model that describes a Document
    config.document_model = Blacklight::Summon::SummonDocument

    # Model that maps search index responses to the blacklight response model
    config.response_model = Blacklight::Summon::Response


    config.add_index_field 'title', label: 'Title'
    config.add_show_field 'title', label: 'Title'
  end
end
