<p>Last week I discussed the <a href="/2010/08/when-to-use-ruby-classeval-vs.html">differences between <tt>class_eval</tt> and <tt>instance_eval</tt></a>.</p>


	<p>I stated there were two basic rules to follow when choosing which method to use:</p>


	<ol>
	<li>When the object is a class use <tt>class_eval</tt>, you will typically be using the def keyword</li>
		<li>When the object is an instance use <tt>instance_eval</tt></li>
	</ol>


	<p>When we use instance_eval to define methods where are the located? The are stored in the instance&#8217;s singleton class. I will write more about Ruby&#8217;s singleton class in the future, but for now you may want to read <a href="http://ola-bini.blogspot.com/2006/09/ruby-singleton-class.html">Ola Bini&#8217;s excellent post</a> on the subject.</p>


	<p>Let&#8217;s look at an example:</p>


<pre name="code" class="ruby">

class MyClass; end

my_instance = MyClass.new

my_instance.instance_eval do
  # add the method to the instance's singleton class
  def foo
    "bar" 
  end
end

puts my_instance.foo # => "bar" 

another_instance = MyClass.new

begin
  # since the method exists only on the my_instance singleton class, calling
  # it on another_instance will raise a NoMethodError exception

  puts another_instance.greeting
rescue NoMethodError
  puts "The foo method does not exist" 
end

</pre>

What happens when we call <tt>instance_eval</tt> on <tt>Class</tt>?
<pre name="code" class="ruby">

MyClass.instance_eval do
  def baz
    "qux" 
  end
end

puts MyClass.baz # => "qux" 

</pre>

	<p>As you can see it defines a class method. I would argue that you should never use instance_eval on a class method (although my last post regarding the subject suggested you could). I feel for a beginner in Ruby it may confuse. Stick to <tt>class_eval</tt> for class objects, and <tt>instance_eval</tt> for instances. If you need to dynamically define a class method then use this technique:</p>


<pre name="code" class="ruby">

MyClass.class_eval do

  class << self

    # define .quux as a class method
    #    
    def quux
      "corge" 
    end
  end

  def grault
    "garply" 
  end
end

puts MyClass.quux # => "corge" 
puts my_instance.grault # => "garply" 

</pre>
