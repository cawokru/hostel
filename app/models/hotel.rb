class Hotel < ActiveRecord::Base
  has_one :address
  has_many :comments
  belongs_to :user

  validates :title, presence: true
  validates :rating, presence: true

  scope :by_rating, -> { joins(:comments).group('hotels.id').order('AVG(comments.rating) DESC')}

  has_attached_file :photo, styles: { :medium => "300x300>" }, :default_url => '/public/images/no-image_original.jpg'
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
