require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品登録' do
    context '商品出品登録できる場合' do
      it "image、item_name、item_text、category_id、status_id、postage_id、area_id、item_day_id、priceがあれば保存される" do
        expect(@item).to be_valid
      end
    end
    context '商品出品できない場合' do
      it 'imageが空では保存できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it 'item_nameが空では保存できない' do
        @item.item_name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Item name can't be blank")
      end
      it 'item_textが空では保存できない' do
        @item.item_text = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Item text can't be blank")
      end
      it 'category_idが1では保存できない' do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Category category can't be blank")
      end
      it 'status_idが1では保存できない' do
        @item.status_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Status status can't be blank")
      end
      it 'postage_idが1では保存できない' do
        @item.postage_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Postage postage  can't be blank")
      end
      it 'area_idが1では保存できない' do
        @item.area_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Area area can't be blank")
      end
      it 'item_day_ idが1では保存できない' do
        @item.item_day_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Item day day can't be blank")
      end
      it 'priceが空では保存できない' do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
      it 'priceが300より小さいと登録できない' do
        @item.price = 299
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be greater than or equal to 300")
      end
      it 'priceが9999999より大きいと登録できない' do
        @item.price = 10000000
        @item.valid?
        expect(@item.errors.full_messages).to include("Price must be less than or equal to 9999999")
      end
      it 'priceが半角数字でないと登録できない' do
        @item.price = '12345'
        expect(@item).to be_valid
      end
      it 'userが紐付いていないと保存できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include('User must exist')
      end
    end
  end
end
