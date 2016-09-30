module Blacklight::Summon
  module SearchBuilderBehavior
    extend ActiveSupport::Concern

    included do
      self.default_processor_chain = [
          :add_query_to_summon,
      ]
      end


    def add_query_to_summon summon_parameters
      if blacklight_params[:q].is_a? Hash
        q = blacklight_params[:q]
        raise "FIXME, translation of Solr search for Summon"
      elsif blacklight_params[:q]
        # Create search field with variable, pattern and :q
        summon_parameters[:q] = blacklight_params[:q]
      end
    end
  end
end
