# frozen_string_literal: true

module RuboCop
  module SketchUp
    class Namespace

      attr_reader :namespace

      SEPARATOR = '::'

      # @param [String] namespace
      def initialize(namespace)
        unless namespace.is_a?(String)
          raise TypeError, "Expected String, got #{namespace.class.name}"
        end

        @namespace = namespace
      end

      # Get the first component of a namespace relative to Object.
      # May return 'Object' if the namespace is in the global namespace.
      def first
        parts.find { |name| name != 'Object' } || 'Object'
      end

      # Get a namespace string that is relative to Object.
      def from_root
        items = parts
        items.shift if items.size > 1 && items.first == 'Object'
        items.join(SEPARATOR)
      end

      def join(other)
        self.class.new("#{@namespace}#{SEPARATOR}#{other}")
      end

      # Get the first component of a namespace relative to Object.
      # May return 'Object' if the namespace is in the global namespace.
      def parts
        namespace.split(SEPARATOR)
      end

      def top_level?
        %w[Kernel Object].include?(parts.first)
      end

    end
  end
end
