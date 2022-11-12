class Course < ApplicationRecord
  belongs_to :user
  belongs_to :level
  belongs_to :material
  has_rich_text :content
end
