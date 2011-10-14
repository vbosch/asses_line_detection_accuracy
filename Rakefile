
begin
  require 'bones'
rescue LoadError
  abort '### Please install the "bones" gem ###'
end

task :default => 'test:run'
task 'gem:release' => 'test:run'

Bones {
  name     'asses_line_detection_accuracy'
  authors  'Vicente Bosch'
  email  'vbosch@gmail.com'
  url  'http://github.com/vbosch/asses_line_detection_accuracy'
  ignore_file  '.gitignore'
}

