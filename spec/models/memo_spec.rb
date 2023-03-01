require 'rails_helper'

RSpec.describe Memo, type: :model do
  before do
    @memo = FactoryBot.build(:memo)
  end

  describe 'メモの保存' do
    context 'メモが投稿できる場合' do
      it 'タイトルとメモを投稿できる' do
        expect(@memo).to be_valid
      end
    end
    context 'メモが投稿できない場合' do
      it 'タイトルが空では投稿できない' do
        @memo.title = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Title can't be blank")
      end
      it 'メモが空では投稿できない' do
        @memo.memo = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Memo can't be blank")
      end
      it 'ユーザーが紐付いていなければ投稿できない' do
        @memo.user = nil
        @memo.valid?
        expect(@memo.errors.full_messages).to include('User must exist')
      end
    end
  end
end
