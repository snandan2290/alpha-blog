class Article < ApplicationRecord

    validates :title, presence: true, length: {minimum: 6, maximum: 100}
    validates :description, presence: true, length: {minimum: 36, maximum: 366}

end