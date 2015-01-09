class StaticPagesController < ApplicationController
  def v22
  	respond_to do |format|
	  	format.html {render layout: 'strongarm'}
	  end
  end

  def ergohug
    respond_to do |format|
	  	format.html {render layout: 'strongarm'}
	  end
  end

  def our_process
  	respond_to do |format|
	  	format.html {render layout: 'strongarm'}
	  end
  end

  def about
  	respond_to do |format|
	  	format.html {render layout: 'strongarm'}
	  end
  end
end
