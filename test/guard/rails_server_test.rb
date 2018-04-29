require 'test_helper'

class Guard::RailsServerTest < Minitest::Test
  def test_cmd
    server = Guard::RailsServer.new
    assert_equal "bin/rails restart", server.send(:cmd)

    server = Guard::RailsServer.new(cmd: "bundle exec rails restart")
    assert_equal "bundle exec rails restart", server.send(:cmd)
  end
end
