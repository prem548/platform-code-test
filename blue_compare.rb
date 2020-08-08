# frozen_string_literal: true

class BlueCompare < Award
  include BusinessRules

  PROVIDER_NAME = 'Blue Compare'

  def initialize(expires_in, quality)
    super(PROVIDER_NAME, expires_in, quality)
  end

  def update_provider_quality
    reduce_expire_by_day
    if expires_in.negative?
      self.quality = 0
    elsif expires_in < 5
      increment_quality(3)
    elsif expires_in < 10
      increment_quality(2)
    else
      increment_quality
    end
  end
end
