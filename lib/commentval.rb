require 'nokogiri'

if (ARGV[0].nil?) then
  puts "Error: No Code folder provided"
  exit(1)
end

code_folders = ARGV[0].split(',')

if (ARGV[1].nil?) then
  puts "Error: No Code extensions provided"
  exit(1)
end

code_extensions = ARGV[1].split(',')

if (ARGV[2].nil?) then
  puts "Error: Coverage target missing"
  exit(1)
end

target = ARGV[2].to_f;

files = Array.new();

code_folders.each do |filename|
  all_files = Dir[filename + '**/**']
  all_files.each do |filename|
    if (code_extensions.include? File.extname(filename)) then
      files.push(filename)
    end
  end
end

total = 0;
passed = 0;

files.each do |filename|
  File.open(filename, "r") do |file_handle|
    file_handle.each_line do |file_line|
      total = total + 1
      if ((file_line.scan(/#/i).count > 0) || (file_line.scan(/\/\//i).count > 0)) then
        passed = passed + 1
      end
    end
  end
end

actual = (passed.to_f / total.to_f).round(2)

if (actual < target) then
  puts "Error: Commenting is below target. Expected: >" + target.to_s + ", Actual: " + actual.to_s
  exit(1)
end

puts "Success: Commenting is at or above target. Expected: >" + target.to_s + ", Actual: " + actual.to_s
