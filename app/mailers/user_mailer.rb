class UserMailer < ApplicationMailer

	def new_purchase(purchase)
	  	@purchase = purchase
	    mail(
	    	to: "Heroes Gallery <contact@appstratgram.com>", 
	    	subject: 'Nouvelle commande sur Heroes Gallery'
	    	)
	  end

	  #A envoyer aux adresses michel.c.desmit@heroes-gallery.com, quentin.Haerinck@heroes-gallery.com et didier.haerinck@marcelandco.com.

	def your_purchase(purchase)
	  	@purchase = purchase
	    mail(
	    	to: @purchase.buyer.email, 
	    	subject: 'Votre commande sur Heroes Gallery'
	    	)
	  end


	  def new_subscription(subscription)
	  	@subscription = subscription
	    mail(
	    	to: "Heroes Gallery <contact@appstratgram.com>", 
	    	subject: 'Nouvel abonné à la newsletter'
	    	)
	  end


end
