class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :entitys
  has_one_attached :icon
  validates :name, presence: true, uniqueness: true
  validates :icon, presence: true
  validate :icon_format
  
  private

  def icon_format
    if icon.attached? && !icon.content_type.in?(%w(image/jpeg image/png image/gif))
      errors.add(:icon, 'must be a JPEG, PNG, or GIF')
      icon.purge
    end
  end

end
