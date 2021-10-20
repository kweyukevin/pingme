class User < ApplicationRecord
    validates_uniqueness_of :username

    def self.generate
        #Generate random username for use in the chat rooms
        adjectives = ['Ancient', 'Broken', 'Creative', 'Dangerous', 'Effective', 'Gilded', 'Immortal', 'Jackhammer', 'Pontious']
        nouns = ['Forkal', 'Lethal', 'Maestro', 'Vile', 'Exodus', 'Pilate', 'Panius', 'Local', 'Faland']

        number = rand.to_s[2..4]
        username = "#{adjectives.sample}-#{nouns.sample}-#{number}"

        create(username: username)
    end
end
