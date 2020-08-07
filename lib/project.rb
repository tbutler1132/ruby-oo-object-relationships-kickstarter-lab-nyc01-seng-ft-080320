
class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end
    
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    
    def backers
        array = []
        ProjectBacker.all.collect do |backer|
          if backer.project == self  
            array << backer.backer
          end 
        end 
        array 
    end

end
