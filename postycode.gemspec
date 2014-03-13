Gem::Specification.new do |s|
  s.name         = 'postycode'
  s.version      = '0.0.1'
  s.executables << 'postycode'
  s.date         = '2014-03-13'
  s.summary      = "Easily generate strings of escaped Unicode"
  s.description  = "Postycode builds strings of escaped Unicode symbols when you give it hexadecimal
code point ranges."
  s.authors      = ["Ersin Akinci"]
  s.email        = 'ersin.akinci@gmail.com'
  s.files        = ["bin/postycode", "lib/postycode.rb"]
  s.homepage     = 'https://github.com/earksiinni/postycode'
  s.license      = 'MIT'
end