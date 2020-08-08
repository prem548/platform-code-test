# frozen_string_literal: true

require 'award'
require 'normal'
require 'blue_first'
require 'blue_compare'
require 'blue_star'

def update_quality(awards)
  awards.each(&:update_provider_quality)
end
