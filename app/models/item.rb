class Item < ActiveRecord::Base
  has_many :ingredients
  has_many :allergies

  accepts_nested_attributes_for :ingredients,
  															reject_if: proc { |attributes| attributes['name'].blank? },
  															allow_destroy: true
  accepts_nested_attributes_for :allergies,
  															reject_if: proc { |attributes| attributes['restriction'].blank? },
  															allow_destroy: true

  validates :title, :description, :price, :image, presence: true
  has_attached_file :image, styles: { medium: "300x300#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
