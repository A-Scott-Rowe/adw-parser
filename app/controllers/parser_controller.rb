class ParserController < ApplicationController
  def index
  end

  def post
    if params['style'] == 'n'
      text = ParserHelper.parse(params['input'])
    else
      text = ParserHelper.parse_old(params['input'])
    end
    render text: "#{text}"
  end
end
