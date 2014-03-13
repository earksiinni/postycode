# The main Postycode driver
class Postycode
  # Convert hexadecimal Unicode code point ranges into escaped Unicode
  #
  # Example:
  #   >> Postycode.parse(["00AB-00AD", "0041"])
  #   => "\u00ab\u00ac\u00ad\0041"
  #
  # Arguments:
  #   argv: (Array)
  
  # Converts code point ranges in ARGV to final string
  def self.parse(argv)
    escaped_syms = String.new

    argv.each do |arg|
      range = arg.scan(/[0-9A-Fa-f]{4}/)
      if range.count == 2 # If given a range instead of an individual code point
        range = (range[0].hex..range[1].hex).to_a # 00AB-00AD -> [171, 172, 173]
        range.collect! { |num| num.to_s(16).rjust(4, '0') } # e.g., 172 -> 00ac
      end
      range.collect! { |num| num.prepend('\u') } # e.g., 00ac -> \u00ac
      escaped_syms << range.join
    end
    escaped_syms
  end
end