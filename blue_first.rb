# frozen_string_literal: true

class BlueFirst < Award
  include BusinessRules

  PROVIDER_NAME = 'Blue First'

  def initialize(expires_in, quality)
    super(PROVIDER_NAME, expires_in, quality)
  end

  def update_provider_quality
    reduce_expire_by_day
    increment_quality if expires_in.negative?
    increment_quality
  end
end
