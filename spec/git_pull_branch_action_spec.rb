describe Fastlane::Actions::GitPullBranchAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The git_pull_branch plugin is working!")

      Fastlane::Actions::GitPullBranchAction.run(nil)
    end
  end
end
