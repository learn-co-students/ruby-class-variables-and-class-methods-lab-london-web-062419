# song class can produce individual songs. 
# Each song has :name, :artist, :genre
#song class keep track of all songs created. 
require 'pry'
class Song

    attr_accessor :name, :artist, :genre

    @@all = []

    #do I always have to set the variable within the class but outside the method? 

    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = {}
    
    


    def initialize(name, artist, genre)

        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre

      
       

        


    end

#setting class variables
     def self.artists
        @@artists.uniq!

     end



     def self.genres

        @@genres.uniq!


     end

    

   def self.count
   
    @@count
    

    end



    # def self.genre_count
    
    
    # @@genres.each_with_object(Hash.new(0){|genre, count| count[genre] +=1 })
    
    
    # end


    # def self.artist_count


    # @@artists.each_with_object(Hash.new(0){|artist, count| if artist_count|artist| count[artist] +=1 else artist_count = })
    
    # end

    def self.artist_count
        artist_count = {} #artist_count hash
        @@artists.each do |artist|
          if artist_count[artist]
            artist_count[artist]+=1
          else
            artist_count[artist]=1
          end
        end
        artist_count #returns artist_count hash where the keys are the names of each artist and the key points to a value that is the number of songs that have that artist.
      end
    
       def self.genre_count
        genre_count = {} #genre_count hash
        @@genres.each do |genre| #iteration over the genre array
          if genre_count[genre] # checks if the hash already contains a key of a particular genre
            genre_count[genre]+=1 # if genre is present in the hash, an increment of 1 is added to the key.
          else
            genre_count[genre]=1 # if genre is not present in the hash already, a new key/valye pair is created.
          end
        end
        genre_count #returns genre_count hash where the keys are the names of each genre and the key points to a value that is the number of songs that have that genre.
      end
    














# binding.pry
end