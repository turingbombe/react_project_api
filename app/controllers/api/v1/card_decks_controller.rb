module Api
  module V1
    class CardDecksController < ApplicationController
    	def update
    		deck = Deck.find(params["deck_id"])
    		deck.cards << Card.find(params["card_id"])
    		deck.save
    		render json: deck
    	end
    end
  end
end