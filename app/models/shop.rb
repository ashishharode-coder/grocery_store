class Shop < ApplicationRecord
  include ActiveStorageSupport::SupportForBase64
  include Qrable

  belongs_to :seller
  has_one_attached :image
end
