class Post < ApplicationRecord
  validates :nama,{presence: true}
  validates :finish,{presence: true}
end
