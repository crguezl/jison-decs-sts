task :default => :conflict

desc "Compile the conflict example with bison"
task :conflict do
  sh "bison -v BothRightRecursiveConflict.y"
  sh "rm *.tab.c"
  puts "See BothRightRecursiveConflict.output"
end

desc "Compile reorganizing solution"
task :four do
  sh "jison DsLeftRecSsRightRec.jison"
  sh "node use_DsLeftRecSsRightRec.js"
end

desc "Compile lookahead solution"
task :five do
  sh "jison Looking2Lookaheads.jison"
  sh "node use_Looking2Lookaheads.js"
end

desc "borrar ficheros temporales"
task :clean do
  sh "rm -f *.tab.c"
  sh "rm -f *.output"
  sh "rm -f DebugDynamicResolutionConflict.js Looking2Lookaheads.js"
  sh "rm -f DebugDynamicResolution4.pm lastD.pm"
end
