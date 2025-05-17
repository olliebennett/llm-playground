require 'dotenv/load'

require 'ruby_llm'
require_relative 'src/agent'

RubyLLM.configure do |config|
  config.gemini_api_key = ENV.fetch('GEMINI_API_KEY')
  config.default_model = 'gemini-2.0-flash-thinking-exp'
end

Agent.new.run
