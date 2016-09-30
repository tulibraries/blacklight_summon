require 'summon/document'

Summon::Document.class_eval do
  # Monkey Patches a methods for a hash representation of summon document objects
  # required by Blacklight

  def to_h

    hash = {}
    instance_variables.each {|var| hash[var.to_s.delete("@")] = instance_variable_get(var) }
    hash
  end
  alias_method :to_hash, :to_h

end