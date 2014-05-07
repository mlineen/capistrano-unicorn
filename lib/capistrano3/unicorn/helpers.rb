require 'erb'

module Capistrano3
  module Unicorn
    module Helpers

      def template(template_name)
        config_file = File.join(File.dirname(__FILE__), "../../generators/capistrano3/unicorn/templates/#{template_name}")
        StringIO.new(ERB.new(File.read(config_file)).result(binding))
      end

      def file_exists?(path)
        test "[ -e #{path} ]"
      end
    end
  end
end
