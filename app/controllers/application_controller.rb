class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
    def show 
      if params['id'] == '1'
        @url = "https://pbs.twimg.com/profile_images/577263178196918272/Ph9cQ43m.jpeg"
        @name = "Elmedina Omerovic"
        @caption = "Hello, my name is Elmedina Omerovic and I attend Stephan T. Mather. I am part of many things at Mather. I am a captain of Mather's cheer and bowling team. I am president of Arabian club. I am also a mathlete, on math team. I was also part of lacrosse and zumba at the school. I am a certified zumba instructor and love teaching and working out. "
        @percent = '52%'
      elsif params['id'] == '2'
        @url = "https://pbs.twimg.com/profile_images/543864552195383296/YOPNBPJO.jpeg"
        @name = "Eunice Montenegro"
        @caption = "Hello, my name is eunice and I attend Stephan T. Mather. I am part of many things at Mather. I am a captain of Mather's cheer and bowling team. I am president of Arabian club. I am also a mathlete, on math team. I was also part of lacrosse and zumba at the school. I am a certified zumba instructor and love teaching and working out."
        @percent = '90%'
      elsif params['id'] == '3'
        @url = "http://globe-views.com/dcim/dreams/giraffe/giraffe-05.jpg"
        @name = "Isabella Moran"
        @caption = "This is Elmedina Omerovic's best friend. She is amazing. There are no words to describe her fully. Isabella is strong, independant, just plain amazing and no one can replace her or even come close. She I captain of the bowling team and is the only four year player. Isabella has an amazing sense of humor and her sarcasm is scary, never know if within that sarcam if she is serious or not. She id perfect on the outside as well as the inside. Her imune system on point! But seriously she has a beautiful heart and soul. She is the only one that knows how to knock some sense into and handle Elmedina.  Elmedina couldn't ask for a better best friend. "
        @percent = '87%'
      end
      render 'show'
    end
    def new
    end
    
    def create
      g = Gif.new
      g.name = params['name']
      g.caption = params['caption']
      g.url = params['url']
      g.save
        redirect_to "/gifs/#{g.id}"
    end
  end
