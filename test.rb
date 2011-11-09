require "stringio"

class RequireError < StandardError
end

module Kernel

  alias :the_original_require require
  private :the_original_require

  def capture_stderr
    # The output stream must be an IO-like object. In this case we capture it in
    # an in-memory IO object so we can return the string value. You can assign any
    # IO object here.
    previous_stderr, $stderr = $stderr, StringIO.new
    yield
    $stderr.string
  ensure
    # Restore the previous value of stderr (typically equal to STDERR).
    $stderr = previous_stderr
  end

  def require(name)
    captured_output = capture_stderr do
      the_original_require(name)
    end

    if(captured_output =~ %r{iconv})
      raise RequireError, 'iconv requirement found'
    end
  end
end

require 'evergreen'

Evergreen.root = Dir.pwd
Evergreen::Runner.new.run
