class Book < ActiveRecord::Base
    belongs_to :publisher
    belongs_to :reader

    def why_read?
        "Even a superhero with the ability of #{reader.superpower} made time to read #{title} published by #{publisher.name}!"
    end
end