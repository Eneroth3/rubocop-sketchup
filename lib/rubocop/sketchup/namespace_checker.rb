# frozen_string_literal: true

module RuboCop
  module Cop
    module Sketchup
      module NamespaceChecker

        def on_class(node)
          check_namespace(node)
        end

        def on_module(node)
          check_namespace(node)
        end

        def on_def(node)
          check_namespace(node)
        end
        alias on_defs on_def

        # Constant assignment.
        def on_casgn(node)
          check_namespace(node)
        end

        def check_namespace(node)
          add_offense(node, location:  :name, severity: :error) if in_namespace?(node)
        end

        def in_namespace?(node)
          # parent_module_name might return nil if for instance a method is
          # defined within a block. (Apparently that is possible...)
          return false if node.parent_module_name.nil?
          namespace = SketchUp::Namespace.new(node.parent_module_name)
          namespaces.include?(namespace.first)
        end

        def namespaces
          raise NotImplementedError
        end

      end
    end
  end
end
