class User
    attr_accessor :email
    attr_accessor :age
    @@all_users = []

    def initialize (user_email,user_age)
        @email = user_email
        @age = user_age
        @@all_users << self
    end
    def self.all_users
        return @@all_users
    end

    def self.find_by_email(user_email)
        @@all_users.each do |counter| 
            if x.email == user_email
                puts "Voici l'âge du User trouvé : #{counter.age}"
            end
        end
    end
end
