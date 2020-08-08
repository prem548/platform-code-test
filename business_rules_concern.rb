# frozen_string_literal: true

module BusinessRules
  INCREMENT_DECREMENT_VALUE = 1

  def increment_quality(value = nil)
    return if self.quality == 50

    self.quality += (value || INCREMENT_DECREMENT_VALUE)
  end

  def reduce_expire_by_day
    self.expires_in -= 1
  end

  def decrement_quality(value = nil)
    return if self.quality <= 0

    self.quality -= (value || INCREMENT_DECREMENT_VALUE)
  end
end
