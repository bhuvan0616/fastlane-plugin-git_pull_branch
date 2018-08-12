require 'fastlane/action'
require_relative '../helper/git_pull_branch_helper'

module Fastlane
  module Actions
    class GitPullBranchAction < Action
      def self.run(params)
        Actions.sh("git pull origin #{params[:branch]}")
      end

      def self.description
        "pull code from different branch"
      end

      def self.authors
        ["Bhuvanesh BS"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "git_pull pulls code from same brach only. This plugin will pull code from specified branch."
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :branch,
                                  env_name: "BRANCH_NAME",
                               description: "The brach name to pull",
                                  optional: false,
                                  is_string: false)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
