# frozen_string_literal: true

# Award = Struct.new(:name, :expires_in, :quality) do
# end
require 'business_rules_concern'

class Award
  attr_accessor :name, :expires_in, :quality

  def initialize(*options)
    @name, @expires_in, @quality = options
  end

  def update_provider_quality; end
end
