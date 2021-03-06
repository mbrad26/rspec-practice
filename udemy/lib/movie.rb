class Actor
    def initialize(name)
        @name = name
    end

    def ready?
        sleep(1)
        true
    end

    def act 
        'I love you, baby'
    end

    def fall_of_ladder
        'Call my agent! No way!'
    end

    def light_on_fire
        false
    end
end

class Movie
    attr_reader :actor

    def initialize(actor)
        @actor = actor
    end

    def start_shooting
        if actor.ready?
            puts actor.act
            puts actor.fall_of_ladder
            puts actor.light_on_fire
            puts actor.act
        end
    end
end

# actor = Actor.new('Brad Pitt')
# movie = Movie.new(actor)
# movie.start_shooting