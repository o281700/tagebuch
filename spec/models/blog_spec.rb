require 'rails_helper'

RSpec.describe Blog, type: :model do
  describe '#blog' do
    before do
      @blog = FactoryBot.build(:blog)
    end

    it 'titleとarticleが存在すれば保存できること' do
      expect(@blog).to be_valid
    end

    it 'titleが空では保存できないこと' do
      @blog.title = ''
      @blog.valid?
      expect(@blog.errors.full_messages).to include("Title can't be blank")
    end

    it 'articleが空では保存できないこと' do
      @blog.article = ''
      @blog.valid?
      expect(@blog.errors.full_messages).to include("Article can't be blank")
    end
  end
end
