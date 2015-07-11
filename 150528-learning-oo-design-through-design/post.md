# Learning OO Design through Design Patterns

Last week at [Montreal.rb](http://www.montrealrb.com) there was an open discussion on [RailsConf](http://railsconf.com/) held in Atlanta which I had attended this year. We discussed favorite talks, themes and general experiences. I prepared a few notes prompting folks to explore design patterns after seeing Sandi Metz's talk, [Nothing is Something](http://confreaks.tv/videos/railsconf2015-nothing-is-something). Why?

In the first half of Sandi's presentation she presented an example of using the [Null Object Pattern](http://en.wikipedia.org/wiki/Null_Object_pattern) as an example of sending messages to resolve her adversion to conditionals. During this portion of the presentation, she made an interesting comment explaining how she (re)discovered this pattern herself and then presented it to her co-worker. Sandi's co-worker described as "being a little more well read", told Sandi that this pattern had a name, the "Null Object Pattern".

Sandi goes on to suggest that we don't need to solve specific problems ourselves, as others have already solved these for us. She doesn't mention this explicitly but I interpreted this as [Design Patterns](http://en.wikipedia.org/wiki/Design_Patterns). It just requires a little bit of research and reading. But where to start?

## Two Book Recommendations

The classic [Gang of Four Design Patterns](http://www.amazon.com/Design-Patterns-Elements-Reusable-Object-Oriented/dp/0201633612/ref=sr_1_3?s=books&ie=UTF8&qid=1432731268&sr=1-3) book maybe a little intermediating for some, I know I've never found it appealing. However, there are some good alternatives. I recommend two.

The first book that really helped enter the world of design patterns was [Design Patterns Explained](http://www.amazon.com/Design-Patterns-Explained-Perspective-Object-Oriented/dp/0321247140/ref=sr_1_1?s=books&ie=UTF8&qid=1432731268&sr=1-1) by Shalloway and Trott. As the sub-title suggests, "A New Perspective on Object-Oriented Design", explains design patterns in the context of good OO design.

Likewise, [Head First Design Patterns](http://shop.oreilly.com/product/9780596007126.do), also describes design patterns in the context of OO design, connecting design patterns with principles such as **"Encapsulate what varies" and "Favor composition over inheritance"**. The first chapter is a great example of presenting these principles first in an example, and then identifying it as the [Strategy Pattern](http://en.wikipedia.org/wiki/Strategy_pattern). It removes the notion of using a pattern for patterns sake and focuses the discussion on solving problems, using principles and proven solutions.

The [Head First series](http://www.headfirstlabs.com/) of books maybe off putting to some. Personally I've never been attracted to the series, but the Design Patterns book they have published, I feel, is first class. The examples they use really stick in your head and a great lever for accessing the patterns in the future. I've also heard good things about the [Object-Oriented Analysis and Design](http://shop.oreilly.com/product/9780596008673.do) book as well, although I haven't read it. (If I remember correctly, I think Sandi mentioned this title when I attended her course in Durham; however I not suggesting this is an endorsement of the book by her.)

## Don't fear patterns, use appropriately

So rather trying to solve problems that have already been solved, I recommend investigating Design Patterns and these books are a great introduction. Design Patterns in the past do have a bad rap in the Ruby community, but I think that is no longer the case as the community matures. The original adversion to design patterns maybe due to the overuse within the Java community. Please remember, **each design pattern needs to be used appropriately, and always consider a simpler approach**.

I believe these book recommendations would be a good follow-up to Sandi's book Practical Object-Oriented Design in Ruby, to **help triangulate your understanding of OO design**.

Let me know how it goes!

__END__

Sandi Metz - Nothing is Something

* how many who have seen it?
* after presenting the Null Object Pattern (1st half)
* figured out the pattern herself
* but co-worker (little more well read) said there’s a name for that
* hints at: we should not be working out these patterns ourselves
* Rubyists are a little pattern adverse
* in the second part presents "This Is the House That Jack Built”, a rhyme and a cumulative tale and demonstrates how to make changes to the rhyme using the open-closed principle (for example, telling it in a random order)
* interesting she never mentions the name of the pattern
* so if you have a set of related algorithms that are interchangeable what pattern would you use?
* so the patterns Sandi ends up using is the Strategy pattern
* so the point of all this, I would encourage you to know the basic Design Patterns
* so much useful know in Design Patterns, especially how to design good OO system
* talk about good OO systems — maintainable and extendible
* now the original DP (Gang of Four) is not the most approachable book
* recommendations: Head First Design Patterns (recently updated, using Java Lambda syntax), Design Patterns Explained
* so if you’ve read POODR and you want to triangulate your understanding, I highly recommend learning Design Patterns so you code like Sandi Metz (or get a little bit closer)
