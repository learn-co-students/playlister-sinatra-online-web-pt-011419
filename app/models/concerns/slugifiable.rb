module Slugifiable

  module InstanceMethods

    def slug
      name.gsub(" ", "-").downcase
    end

  end

  module ClassMethods

    def find_by_slug(slug)
      all.find {|s| s.slug == slug}
    end

  end

end
