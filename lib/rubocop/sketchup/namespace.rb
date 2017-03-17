# frozen_string_literal: true

module RuboCop
  module Cop
    module SketchUp
      class Namespace

        attr_reader :namespace

        # @param [String] namespace
        def initialize(namespace)
          @namespace = namespace
        end

        # Get the first component of a namespace relative to Object.
        # May return 'Object' if the namespace is in the global namespace.
        def first
          parts.find { |name| name != 'Object' } || 'Object'
        end

        # Get a namespace string that is relative to Object.
        def from_root(namespace)
          items = parts
          items.shift if items.size > 1 && items.first == 'Object'
          items.join('::')
        end

        # Get the first component of a namespace relative to Object.
        # May return 'Object' if the namespace is in the global namespace.
        def parts
          namespace.split('::')
        end

        def top_level?
          parts.last == 'Object'
        end

      end
    end
  end
end
