class Work < ApplicationRecord
has_many :breaks
belongs_to :user
end
