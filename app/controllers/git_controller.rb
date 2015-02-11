class GitController < ApplicationController
  def index

  end

  def show
    render topic
  end

  private
  def topic
    params[:id].gsub("-", "_")
  end
end