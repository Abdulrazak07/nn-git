class Blog < ApplicationRecord
    enum status: {draft:0, punlished:1}
    extend FriendlyId
    friendly_id :title, use: :slugged 
end
