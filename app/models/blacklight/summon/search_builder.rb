module Blacklight::Summon

  class SearchBuilder < Blacklight::SearchBuilder
    include Blacklight::Summon::SearchBuilderBehavior
  end

end
