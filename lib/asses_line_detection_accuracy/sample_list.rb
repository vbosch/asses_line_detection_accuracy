module AssesLineDetectionAccuracy
  class SampleList
    def initialize(ex_file_name)
      @file_name = ex_file_name
      @list = Array.new
      @processed = Hash.new{false}
    end

    def read
      File.open(@file_name,"r") do |file|
        while(line=file.gets)
          process_line(line)
        end
      end
    end

    def process_line(line)

      @list.push
    end

    def processed?(x)
      @processed[x]
    end

    def process(x)
      raise "Element already processed" if processed? x
      raise "Element not in list" unless include? x
      @processed[x]=true
    end

    def include?(x)
      @list.include?(x)
    end

    def reset_processed
      @processed.clear
    end

  end
end