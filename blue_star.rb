# frozen_string_literal: true.

class BlueStar < Award
  include BusinessRules

  PROVIDER_NAME = 'Blue First'.freeze
  def initialize(expires_in, quality)
    super(PROVIDER_NAME, expires_in, quality)
  end

  def update_provider_quality
    reduce_expire_by_day
    if expires_in.negative?
      # Once expiration passed,qulity score degrades twice as original
      # original 2 and twice after expiration date passed
      decrement_quality(4 * INCREMENT_DECREMENT_VALUE)
    else
      # should lose quality value twice as normal Awards
      decrement_quality(2 * INCREMENT_DECREMENT_VALUE)
    end
  end
end
