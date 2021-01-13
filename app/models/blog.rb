class Blog < ApplicationRecord
  validates :title, :article, presence: true
end
