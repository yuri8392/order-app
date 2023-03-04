require 'rails_helper'

RSpec.describe Capacity, type: :model do
  before do
    @capacity = FactoryBot.build(:capacity)
  end

  describe '業者新規登録' do
    context '新規登録できる場合' do
      it 'client_numberとclient_name、capacityが存在すれば登録できる' do
        expect(@capacity).to be_valid
      end
    end

    context '新規登録できない場合' do
      it 'client_numberが空では登録できない' do
        @capacity.client_number = ''
        @capacity.valid?
        expect(@capacity.errors.full_messages).to include("Client number can't be blank")
      end
      it 'client_nameが空では登録できない' do
        @capacity.client_name = ''
        @capacity.valid?
        expect(@capacity.errors.full_messages).to include("Client name can't be blank")
      end
      it 'capacityが空では登録できない' do
        @capacity.capacity = ''
        @capacity.valid?
        expect(@capacity.errors.full_messages).to include("Capacity can't be blank")
      end
      it '重複したclient_numberが存在する場合は登録できない' do
        @capacity.save
        another_capacity = FactoryBot.build(:capacity)
        another_capacity.client_number = @capacity.client_number
        another_capacity.valid?
        expect(another_capacity.errors.full_messages).to include('Client number has already been taken')
      end 
      it 'client_numberが3文字以下では登録できない' do
        @capacity.client_number = '000'
        @capacity.valid?
        expect(@capacity.errors.full_messages).to include('Client number is too short (minimum is 4 characters)')
      end
      it 'client_numberは数値でないと登録できない' do
        @capacity.client_number = 'ああああああ'
        @capacity.valid?
        expect(@capacity.errors.full_messages).to include('Client number is not a number')
      end
      it 'キャパシティは整数でないと登録できない' do
        @capacity.capacity = 'ああああああ'
        @capacity.valid?
        expect(@capacity.errors.full_messages).to include('Capacity is not a number')
      end
    end
  end
end
