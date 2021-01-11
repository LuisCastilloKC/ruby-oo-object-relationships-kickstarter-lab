class ProjectBacker
    attr_reader :project, :backer

    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        save()
    end

    def save 
        @@all << self
    end

    # class methods
    class << self
        def all
            @@all
        end
    end
end


# Backer - ::new
#   takes a name on initialization, accessible through an attribute reader

# Project - ::new
#   takes a title on initialization, accessible through an attribute reader

# ProjectBacker
#   @@all
#     is a class variable set to an empty array
#   .all
#     is a class method that returns the @@all class variable
#   ::new
#     takes in a project and a backer on initialization, accessible through an attribute reader
#     stores the new instance of ProjectBacker in the @@all class variable

# Backer - #back_project
#   is an instance method that accepts a project as an argument and creates a ProjectBacker, associating the project with this backer

# Project - #add_backer
#   is an instance method that accepts a backer as an argument and creates a ProjectBacker, associating the backer with this project

# Backer - backed_projects
#   returns an array of projects associated with this Backer instance

# Project - backers
#   returns an array of backers associated with this Project instance

# Finished in 0.00456 seconds (files took 0.12836 seconds to load)
# 10 examples, 0 failures