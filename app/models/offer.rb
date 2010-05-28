class Offer < ActiveRecord::Base

  UNIT_TYPES = %w(litros cubas)

  def volume
    raise "Invalid range for unit_type" unless UNIT_TYPES[unit_type]
    "#{quantity} #{UNIT_TYPES[unit_type]}"
  end
  
end
