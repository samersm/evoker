class Game < ApplicationRecord
  has_attached_file :thumbnail,
  styles: { :thumbnail => "600x400>" },
  default_url: "/images/:style/missing.png"
  validates_attachment_content_type :thumbnail,
  content_type: /\Aimage\/.*\z/

  validates :link, :format => URI::regexp(%w(http https))
end
