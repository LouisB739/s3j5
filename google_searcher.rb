require 'launchy'



def check_if_user_gave_input
    abort("recherche vide") if ARGV.empty?
  end

def google()

    url = "https://www.google.com/search?q=" + ARGV.join()
    puts url

    Launchy.open(url)
end


def google_search
	check_if_user_gave_input
	google
end

google_search