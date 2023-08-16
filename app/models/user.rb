class User < ApplicationRecord
    has_many :posts, foreign_key: :author_id
  
    validates :photo, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp }
  end