chapter1 = ['Chapter 1: Getting Started', 'page 1']
chapter2 = ['Chapter 2: Numbers', 'page 9']
chapter3 = ['Chapter 3: Letters', 'page 3']
toc = [chapter1, chapter2, chapter3]
width = 80

puts ('Table of Contents'.center(width))

toc.each do |chapter|
	puts (chapter[0].ljust(width/2) + chapter[1].rjust(width/2))
end