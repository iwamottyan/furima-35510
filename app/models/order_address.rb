class OrderAddress
  include ActiveModel::Model
  attr_accessor :post_number, :area_id, :city, :number, :building_name, :telephone_number, :user_id, :item_id, :token

  with_options presence: true do
    validates :post_number, presence: true, format: {with: /\A[0-9]{3}-[0-9]{4}\z/}
    validates :city, presence: true
    validates :number, presence: true
    validates :telephone_number, presence: true, format: {with: /\A\d{10,11}\z/}
    validates :user_id 
    validates :item_id
    validates :token, presence: true
  end
  validates :area_id, numericality: { other_than: 1 , message: "area can't be blank"}

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(post_number: post_number, area_id: area_id, city: city, number: number, building_name: building_name, telephone_number: telephone_number, order_id: order.id)
  end
end