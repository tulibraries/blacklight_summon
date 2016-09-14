module Blacklight::Summon
  class SummonDocument

    require_dependency 'blacklight/summon'

    include Blacklight::Summon::Document


    self.unique_key = '@id'
  end
end