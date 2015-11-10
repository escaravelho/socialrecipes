class Recipe < ActiveRecord::Base
  belongs_to :kitchen
  belongs_to :type_of_food
  validates :name, :kitchen, :type_of_food, :preference, :ingredients,
            :steps, presence: true

  has_attached_file :photo
  validates_attachment :photo, content_type: { content_type: ['image/jpg',
                                                              'image/jpeg',
                                                              'image/png',
                                                              'image/gif'] }
end
