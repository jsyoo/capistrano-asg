# frozen_string_literal: true
#
module Capistrano
  module Asg
    module Aws
      module Credentials
        extend ActiveSupport::Concern
        include Capistrano::DSL

        def region
          fetch(:aws_region, ENV['AWS_REGION'])
        end

        def credentials
          ::Aws::Credentials.new(
            fetch(:aws_access_key_id, ENV['AWS_ACCESS_KEY_ID']),
            fetch(:aws_secret_access_key, ENV['AWS_SECRET_ACCESS_KEY'])
          )
        end
      end
    end
  end
end

