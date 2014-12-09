class ImportController < ApplicationController

  def import
    start = Time.now

    puts start

    Import.import params[:file]

    finish = Time.now

    puts (finish - start)/60

    redirect_to 'home/index'
  end

end
