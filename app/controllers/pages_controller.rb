class PagesController < ApplicationController
  def home
    @superpowers = Superpower.all
  end
end
