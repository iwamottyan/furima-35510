class Item < ApplicationRecord

  belongs_to :user
  #has_one :buyer
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :postage
  belongs_to :area
  belongs_to :day

  validates :image, presence: true
  validates :item_name, presence: true
  validates :item_text, presence: true
  validates :category_id, numericality: { other_than: 1 , message: "category can't be blank"}
  validates :status_id, numericality: { other_than: 1 , message: "status can't be blank"}
  validates :postage, numericality: { other_than: 1 , message: "postage  can't be blank"}
  validates :area, numericality: { other_than: 1 , message: "area can't be blank"}
  validates :day, numericality: { other_than: 1 , message: "day can't be blank"}
  validates :price, presence: true
end
