task :default => :conflict

desc "Compile the conflict example with bison"
task :conflict do
  sh "bison -v DebugDynamicResolution4.y"
  sh "rm *.tab.c"
  puts "See DebugDynamicResolution4.output"
end

desc "Compile reorganizing solution"
task :four do
  sh "jison DebugDynamicResolution4.jison"
  sh "node use_DebugDynamicResolution4.js"
end

desc "Compile lookahead solution"
task :five do
  sh "jison DebugDynamicResolution5.jison"
  sh "node use_DebugDynamicResolution5.js"
end

desc "borrar ficheros temporales"
task :clean do
  sh "rm -f *.tab.c"
end
