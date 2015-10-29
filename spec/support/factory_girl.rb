require "factory_girl_rails"

# via https://robots.thoughtbot.com/taming-factory-girl-list-creation
module FactoryGirl
  module Syntax
    module Methods
      alias_method :original_create_list, :create_list

      def create_list(name, amount, *traits_and_overrides, &block)
        if amount > 2
          raise ArgumentError,
          "You asked to create #{amount} records. Don't do that"
        end

        original_create_list(name, amount, *traits_and_overrides, &block)
      end
    end
  end
end

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end
