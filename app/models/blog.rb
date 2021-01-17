class Blog < ApplicationRecord
  validates :title, :article, presence: true

  belongs_to :user

  def previous
    Blog.where('id < ?', self.id).order('id DESC').first
  end

  def next
    Blog.where('id > ?', self.id).order('id ASC').first
  end
end
