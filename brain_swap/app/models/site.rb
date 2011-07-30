class Site < ActiveRecord::Base
    validates :content, :linkws, :presence => true
    
    def self.search(search)
        if search
            find(:all, :conditions => ['content LIKE ?', "%#{search}%"])
        else
            find(:all)
        end
    end   
end
