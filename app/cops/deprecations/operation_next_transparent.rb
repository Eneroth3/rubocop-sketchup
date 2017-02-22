require "rubocop"

module RuboCop
  module Cop
    module Lint
      # Weak warning. (Question?)
      class OperationNextTransparent < Cop
        MSG = 'Third argument is deprecated.'.freeze
        
        def on_send(node)
          _, method_name, *args = *node
          return unless method_name == :start_operation
          return if args.size < 3
          argument = args[2]
          next_transparent = argument.type == :true
          add_offense(argument, :expression) if next_transparent
        end
      end
    end
  end
end
