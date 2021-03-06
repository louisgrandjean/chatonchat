class UserMailer < ApplicationMailer
        default from: 'louis.grandjean99@gmail.com'
       
        def confirmation_email(user)
          #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
          @user = user 
      
          #on définit une variable @url qu'on utilisera dans la view d’e-mail
          @url  = 'http://monsite.fr/login' 
      
          # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
          mail(to: @user.email, subject: 'Merci pour votre commande')
        end
end
