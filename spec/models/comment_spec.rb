require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe '#comment' do
    before do
      @comment = FactoryBot.build(:comment)
    end

    it 'textが存在すれば保存できること' do
      expect(@comment).to be_valid
    end

    it 'textが空であれば保存できないこと' do
      @comment.text = ''
      @comment.valid?
      expect(@comment.errors.full_messages).to include("Text can't be blank")
    end

    it 'userに紐づいていない場合は保存できないこと' do
      @comment.user = nil
      @comment.valid?
      expect(@comment.errors.full_messages).to include('User must exist')
    end

    it 'blogに紐づいていない場合は保存できないこと' do
      @comment.blog = nil
      @comment.valid?
      expect(@comment.errors.full_messages).to include('Blog must exist')
    end
  end
end
