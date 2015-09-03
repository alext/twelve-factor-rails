class RootController < ApplicationController
  def index
    Rails.logger.info "Message via Rails.logger.info"
    Rails.logger.warn "Message via Rails.logger.warn"
    puts "Message via puts"
    $stdout.puts "Message via $stdout.puts"
    $stderr.puts "Message via $stderr.puts"
    STDOUT.puts "Message via STDOUT.puts"
    STDERR.puts "Message via STDERR.puts"
  end
end
