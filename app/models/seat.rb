class Seat < ApplicationRecord
  scope :taken, -> { where(taken: true) }
  scope :not_taken, -> { where(taken: false) }

  def take
    update!(taken: true)
  end

  def untake
    update!(taken: false)
  end
end
