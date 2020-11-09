class QuestionsController < ApplicationController
  def ask
    # actions
  end

  def answer
    # actions
    @question = params[:question]
    case @question.downcase
    when 'hello' then @answer = 'Hello'
    when /.*hello.*/ then @answer = 'Hello you'
    when 'what time is it?' then @answer = "It is currently #{Time.now.strftime('%H:%M')}"
    when '' then @answer = 'Ask a question please'
    else @answer = 'Can you first say hello please?'
    end
  end
end
