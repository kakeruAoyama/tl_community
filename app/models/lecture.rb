class Lecture < ApplicationRecord

    has_many :comments, dependent: :destroy
    has_many :evaluations

    # 多対多のアソシエーション
    has_many :users, through: :current_lectures
    has_many :users, through: :past_lectures
    has_many :past_lectures
    has_many :current_lectures
end
