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
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "GIT_PULL_BRANCH_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.example_code
        [
          'git_pull_branch(branch: 'master')'
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
