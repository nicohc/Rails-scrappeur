require 'open-uri'

class ScrapCrypto

  def initialize

  end

  def get_currency_list
    @page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

    @currencies = @page.css('a[class=currency-name-container]').map{|crypto| crypto.text}
    #permet d'obtenir la liste des monnaies *

    @rates = @page.css("a[class=price]").map{|crypto| crypto.text}
    #permet d'obtenir le cours de chaque monnaie

    @currencies_table = Hash[@currencies.zip(@rates)]
    #Associe à chaque monnaie sa valeur sous forme de arrays
    return @currencies_table
  end

  def perform
    get_currency_list
  end

end
