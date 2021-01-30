class Blog < ApplicationRecord
  validates :title, :article, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy

  def self.search(search)
    if search != ''
      Blog.where('article LIKE(?)', "%#{search}%")
    else
      Blog.includes(:user).order('id DESC')
    end
  end

  def previous
    Blog.where('id < ?', self.id).order('id DESC').first
  end

  def next
    Blog.where('id > ?', self.id).order('id ASC').first
  end
end
