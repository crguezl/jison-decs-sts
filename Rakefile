task :default => :conflict

desc "Compile the conflict example with bison"
task :conflict do
  sh "bison -v DebugDynamicResolution4.y"
  sh "rm *.tab.c"
  puts "See DebugDynamicResolution4.output"
end
