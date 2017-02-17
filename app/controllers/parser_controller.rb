class ParserController < ApplicationController
  def index
  end

  def post
    text = ParserHelper.parse(params['input'])
    render text: "#{text}"
  end
end
