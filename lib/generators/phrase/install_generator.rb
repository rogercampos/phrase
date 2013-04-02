module Phrase
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a PhraseApp initializer for your application."
      class_option :auth_token

      def copy_initializer
        template "phrase.rb", "config/initializers/phrase.rb"
      end

      def show_readme
        readme "README" if behavior == :invoke
      end
    end
  end
end
