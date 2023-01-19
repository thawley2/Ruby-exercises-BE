class Santa
    def initialize
        @suit_fits = true
        @cookies_eaten = 0
    end
    def fits?
        @suit_fits
    end
    def eats_cookies
        @cookies_eaten += 1
        @suit_fits = false if @cookies_eaten >= 3
    end
end