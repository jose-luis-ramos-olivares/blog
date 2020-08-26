class Post < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true
    validates :content, presence: true

    before_save :censor_word
    def censor_word
        self.content = self.content.gsub('estoy', '')
    end
end
