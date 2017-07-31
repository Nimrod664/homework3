class Movie < ActiveRecord::Base
    def self.all_ratings
        arr = Array.new
        self.select("rating").uniq.each {|x| arr.push(x.rating)}
        arr.sort.uniq
    end
end
