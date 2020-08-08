# frozen_string_literal: true.

class Normal < Award
  include BusinessRules

  PROVIDER_NAME = 'NORMAL ITEM'.freeze

  def initialize(expires_in, quality)
    super(PROVIDER_NAME, expires_in, quality)
  end

  def update_provider_quality
    reduce_expire_by_day
    decrement_quality
    decrement_quality if expires_in.negative?
  end
end
