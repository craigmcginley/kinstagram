class PostImage < ActiveRecord::Base
  mount_uploader :url, PostImageUploader

  belongs_to :post

  validates :url, presence: true
  validates :title, allow_blank: true, length: { minimum: 2, maximum: 50 }
  validates :post, presence: true
end
