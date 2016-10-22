class UserMailer < ApplicationMailer

	def new_purchase(purchase)
	  	@purchase = purchase
	    mail(
	    	to: "michel.c.desmit@marcelandco.com, didier.haerinck@marcelandco.com, quentin.haerinck@marcelandco.com",
	    	#to: "michel.c.desmit@heroes-gallery.com",
	    	#cc: "quentin.Haerinck@heroes-gallery.com",
	    	#bcc: "didier.haerinck@marcelandco.com",
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
	    	to: "michel.c.desmit@marcelandco.com, didier.haerinck@marcelandco.com, quentin.haerinck@marcelandco.com",
	    	#to: "michel.c.desmit@heroes-gallery.com",
	    	#cc: "quentin.Haerinck@heroes-gallery.com",
	    	#bcc: "didier.haerinck@marcelandco.com",
	    	subject: 'Nouvel abonné à la newsletter'
	    	)
	  end


end
