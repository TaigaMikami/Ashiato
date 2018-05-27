class Travel < ApplicationRecord
  validates :title, length: { maximum: 50 }, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :start_time_should_be_before_end_time

  mount_uploader :image_url, ImageUrlUploader

  private

  def strat_time_should_be_before_end_time
    return unless start_time && end_time

    if start_time >= end_time
      errors.add(:start_time, 'は旅行終了日より前に設定してください')
    end
  end
end
