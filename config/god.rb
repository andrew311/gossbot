ROOT           = File.join(File.dirname(__FILE__), '..')
GOSSBOT_BIN    = File.join(ROOT, 'bin', 'gossbot.rb')
GOSSBOT_CONFIG = ENV['GOSSBOT_CONFIG']
WORKING_DIR    = Dir.pwd

God.watch do |w|
  w.name  = "gossbot"
  w.dir   = WORKING_DIR
  w.start = "#{GOSSBOT_BIN} #{GOSSBOT_CONFIG}"
  w.keepalive(
    :memory_max => 200.megabytes,
    :cpu_max => 50.percent
  )
end
