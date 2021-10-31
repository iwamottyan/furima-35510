class Item < ApplicationRecord

  belongs_to :user
  has_one :order
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :postage
  belongs_to :area
  belongs_to :item_day

  validates :image, presence: true
  validates :item_name, presence: true
  validates :item_text, presence: true
  validates :category_id, numericality: { other_than: 1 , message: "category can't be blank"}
  validates :status_id, numericality: { other_than: 1 , message: "status can't be blank"}
  validates :postage_id, numericality: { other_than: 1 , message: "postage  can't be blank"}
  validates :area_id, numericality: { other_than: 1 , message: "area can't be blank"}
  validates :item_day_id, numericality: { other_than: 1 , message: "day can't be blank"}
  validates :price, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, item: "is invalid"}
  validates :price, format: {with: /\A[0-9]+\z/, message: "is invalid. Input full-width characters."}
end
