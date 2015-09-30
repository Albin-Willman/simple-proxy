class HomeController < ApplicationController

  def perform
    url = request.original_url.split('url=')[1..-1].join('')
    unless url.blank?
      data = `curl '#{url}'`
      render json: {
        status: 200,
        data: data.html_safe
      } and return
    end
    render json: {
      status: 404
    }
  end
end
