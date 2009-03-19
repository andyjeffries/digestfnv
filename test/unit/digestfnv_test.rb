require "test/unit"
require File.join(File.dirname(__FILE__), "/../../lib/digestfnv")
 
class DigestFNVTest < Test::Unit::TestCase
  def test_32bit
    assert_equal Digest::FNV.calculate(''), 2166136261
    assert_equal Digest::FNV.calculate('abc123'), 3613024805
  end
end
