module Sanistring

  def self.sanitize(name, opts = {})
    sanitized = name.split('').map{ |char|
      if opts[:replace] && opts[:replace][char]
        opts[:replace][char]
      elsif opts[:whitelist].is_a?(Symbol)
        case opts[:whitelist]
        when :alpha_numeric, :alphanumeric
          char if !!(/[a-zA-Z0-9]/ =~ char)
        else
          nil
        end 
      elsif opts[:whitelist].is_a?(String) && opts[:whitelist].include?(char)
        char
      else
        nil
      end
    }.compact.join

    sanitized.downcase! if opts[:downcase]
    sanitized.upcase! if opts[:upcase]
    sanitized
  end
end