class Travel < ApplicationRecord
  validate :name, length: { maxinum: 50 }, preference: true
  validate :start_time, preference: true
  validate :end_time, preference: true
  validate :start_time_should_be_before_end_time

  private

  def strat_time_should_be_before_end_time
    return unless start_time && end_time

    if start_time >= end_time
      errors.add(:start_time, 'は旅行終了日より前に設定してください')
    end
  end
end
