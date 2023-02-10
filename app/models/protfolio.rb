class Protfolio < ApplicationRecord
    validates_presence_of :title,:main_image,:thumb_image
    def self.angular
        where(subtitle: 'Angular')
    end
end
