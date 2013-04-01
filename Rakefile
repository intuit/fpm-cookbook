require 'chef/cookbook/metadata'

desc "tag master branch"

task "tag_master" => ["get_version", "checkout_master", "push_tag", "verify_tag"]

task "get_version" do
  begin
    metadata_file = 'metadata.rb'
    @metadata = Chef::Cookbook::Metadata.new
    @metadata.from_file(metadata_file)
  rescue  => err
    puts "Exception: #{err}"
    exit
  end
end

task "checkout_master" do
  `git checkout master`
  @sha = `git rev-parse --verify HEAD`
end

task "push_tag" do
  puts "Will tag master branch with sha: #{@sha} to tag version: #{@metadata.version}"
  `git tag -a #{@metadata.version} -m "Version #{@metadata.version}"`
  `git push --tags`
end

task "verify_tag" do
  `git tag -l #{@metadata.version}`
end
