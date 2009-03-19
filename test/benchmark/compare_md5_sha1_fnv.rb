require "benchmark"
require "digest/md5"
require "digest/sha1"
require File.join(File.dirname(__FILE__), "/../../lib/digestfnv")

n = 100000
Benchmark.bm(7) do |x|
  x.report("MD5:")   { n.times do ; Digest::MD5.hexdigest('abc123'); end }
  x.report("SHA-1:") { n.times do ; Digest::SHA1.hexdigest('abc123'); end }
  x.report("FNV:")   { n.times do ; Digest::FNV.hexdigest('abc123'); end }
end
