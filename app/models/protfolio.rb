class Protfolio < ApplicationRecord
    validates_presence_of :title,:main_image,:thumb_image
    def self.angular
        where(subtitle: 'Angular')
    end
    after_initialize :set_default

    def set_default
        self.main_image ||= "https://via.placeholder.com/600x400"
        self.thumb_image ||="https://via.placeholder.com/350x200"
    end
end
