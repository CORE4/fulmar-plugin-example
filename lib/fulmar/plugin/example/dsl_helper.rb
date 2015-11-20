module Fulmar
  module Plugin
    module Example
      # You can define helper methods here that are available in the tasks
      module DslHelper
        # Do some stuff with your models
        # You can use something like
        #   storage['example'] ||= Fulmar::Plugin::Example::ExampleModel.new configuration
        # to have one model per environment/target
        def example_text
          'This is an example message'
        end
      end
    end
  end
end