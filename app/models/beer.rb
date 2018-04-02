class Beer < ApplicationRecord
  attr_accessor :brand_name

  belongs_to :brand

  validates :brand, :name, presence: true
  validates :volume, :abv, numericality: { greater_than: 0 }, allow_nil: true
  validates :volume, numericality: { only_integer: true }, allow_nil: true

  before_validation :set_brand

  private

  def set_brand
    self.brand = Brand.where(name: self.brand_name).first_or_initialize
  end
end
