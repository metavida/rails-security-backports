module RailsSecurityBackports
  class Version
    MAJOR = 0
    MINOR = 0
    PATCH = 1
    STRING = "#{MAJOR}.#{MINOR}.#{PATCH}"

    class << self
      # A String representing the current version of this gem.
      def inspect
        STRING
      end
      alias_method :to_s, :inspect
    end
  end

  VERSION = Version::STRING
end