class Quote < ApplicationRecord
  validates :author,:content, presence: true

  def self.search(author)
    Quote.where("author like ?", "#{author}")
  end
end
