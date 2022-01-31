class Event
    attr_accessor :starting
    attr_accessor :duration
    attr_accessor :title
    #@@array_event = []
    
    def initialize(start_date,duration_event,title_event,event_attendees)
        @attendees = []
        @starting = Time.parse(start_date)
        @duration = duration_event
        @title = title_event 
        @attendees = event_attendees
        @ending = (@starting + (@duration * 60))
    end

    def event_users_emails(array_event)
        @@array_event << @attendees
        return array_event
    end

    def postpone_24h
        @starting = @starting + 86400
    end

    def end_date
        @end_date = @starting + @duration
    end

    def is_past?
        return @starting < Time.now   
    end

    def is_futur?
        return @starting > Time.now   
    end

    def is_soon?
        return @starting > (Time.now - 30 * 60)
    end

    def to_s
        puts "Titre" + " : " + "#{@title}"
        puts "Date de début" + " : " + "#{@starting}"
        puts "Durée" + " : " + "#{@duration}"
        puts "Invités" + " : " + "#{@attendees}"
    end
end


