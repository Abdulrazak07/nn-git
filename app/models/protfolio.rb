class Protfolio < ApplicationRecord
    has_many :technologies
    include Placeholder
    validates_presence_of :title,:main_image,:thumb_image
    def self.angular
        where(subtitle: 'Angular')
    end
    after_initialize :set_default

    def set_default
        self.main_image ||= Placeholder.image_generator(height: '600',width: '400')
        self.thumb_image ||=Placeholder.image_generator(height: '350',width: '200')
    end
end
