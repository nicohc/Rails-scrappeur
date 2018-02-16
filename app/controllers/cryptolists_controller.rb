class CryptolistsController < ApplicationController
  def home

  end

  def search
      @monnaie = params[:monnaie]
      @monnaies = ScrapCrypto.new.perform
      redirect_to root_path(@monnaie)
  end
  def create
  	@crypto = params[:crypto]
  	redirect_to search_path(@crypto)
  end



end
