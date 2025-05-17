require 'ruby_llm'

class Agent
  def initialize
    @chat = RubyLLM.chat
  end

  def run
    puts "Chat with the agent. Type 'exit' to ... well, exit"
    loop do
      print "> "
      user_input = gets.chomp
      break if user_input == 'exit'

      response = @chat.ask user_input
      puts response.content
    end
  end
end
