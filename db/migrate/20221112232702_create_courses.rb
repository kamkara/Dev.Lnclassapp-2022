class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses, id: :uuid do |t|
      t.string :title
      t.string :slug
      t.string :status
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid
      t.belongs_to :level, null: false, foreign_key: true, type: :uuid
      t.belongs_to :material, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
