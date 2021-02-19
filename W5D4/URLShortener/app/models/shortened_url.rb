# == Schema Information
#
# Table name: shortened_urls
#
#  id         :bigint           not null, primary key
#  long_url   :string           not null
#  short_url  :string           not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'securerandom'

class ShortenedUrl < ApplicationRecord
  validates :short_url, :long_url, uniqueness: true, presence: true

  belongs_to :user,
    foreign_key: :user_id,
    class_name: :User

    def self.random_code
      random = SecureRandom.urlsafe_base64(16)
      random = SecureRandom.urlsafe_base64(16) while self.exists?(random)
      random
    end

    def self.truncate(user, long_url)
      short_url = self.random_code
      self.create!(long_url: long_url,user_id: user.id, short_url: short_url)
    end
end
