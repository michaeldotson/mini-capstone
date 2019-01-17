class Api::ProductsController < ApplicationController
  def beach_towel
    @beachtowel = Product.find_by(name: "Beach Towel")
    render 'beachtowel.json.jbuilder'
  end

  def mens_shaver
    @mens_shaver = Product.find_by(name: "Men's Shaver")
    render 'mensshaver.json.jbuilder'
  end

  def liquidass
    @liquidass = Product.find_by(name: "Liquid Ass")
    render 'liquidass.json.jbuilder'
  end
end
