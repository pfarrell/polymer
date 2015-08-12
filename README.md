# Polymer
About a year ago, Netflix published a blog post that hinted at a new architectural direction. Historically, we've look at building for architectural inspiration. AI has had experienced a renaissance as biological models like neural nets have gainst traction and proved capable of solving real world problems.  Netflix hinted that they have solved many complexity issues by building a system that [self-assembles](http://techblog.netflix.com/2014/06/building-netflix-playback-with-self.html).  This projet will be an attempt to study this and see if we can't make emergent behavior occur. 

## wc
Let's start with a classic tool, [wc](https://en.wikipedia.org/wiki/Wc_(Unix)).  It reads a file and produces counts of lines, words, and characters.

### assembler
  in: (input, components...)
  out: (input, directedgraph)

  responsible for reading components and outputs and execution plan  

### inputparser
  in: (input, directedgraph)
  out: (filecontents)

### linecounter
  in: (filecontents)
  out: (type, count)

### wordcounter
  in: (filecontents)
  out: (type, count)

### charactercounter
  in: (filecontents)
  out: (type, count)

### output
  in: (type, count)
  out: (stdout, stop)


