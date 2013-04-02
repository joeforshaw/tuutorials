# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

language = TechnologyCategory.create(:name => "Programming language")
w_a_framework = TechnologyCategory.create(:name => "Web application framework")
tool = TechnologyCategory.create(:name => "Software Tool")
os = TechnologyCategory.create(:name => "Operating System")
s_s_framework = TechnologyCategory.create(:name => "Server-side framework")
c_s_framework = TechnologyCategory.create(:name => "Client-side framework")
protocol = TechnologyCategory.create(:name => "Protocol")
library = TechnologyCategory.create(:name => "Library")

ReportCategory.create(:name => "Tutorial")
ReportCategory.create(:name => "Comment")
ReportCategory.create(:name => "User")

Technology.create(:name => "ABAP", :technology_category_id => language.id)
Technology.create(:name => "ActionScript", :technology_category_id => language.id)
Technology.create(:name => "Ada", :technology_category_id => language.id)
Technology.create(:name => "Alice", :technology_category_id => language.id)
Technology.create(:name => "APL", :technology_category_id => language.id)
Technology.create(:name => "Assembly", :technology_category_id => language.id)
Technology.create(:name => "Awk", :technology_category_id => language.id)
Technology.create(:name => "Bash", :technology_category_id => language.id)
Technology.create(:name => "C", :technology_category_id => language.id)
Technology.create(:name => "C#", :technology_category_id => language.id)
Technology.create(:name => "C++", :technology_category_id => language.id)
Technology.create(:name => "CFML", :technology_category_id => language.id)
Technology.create(:name => "COBOL", :technology_category_id => language.id)
Technology.create(:name => "Clojure", :technology_category_id => language.id)
Technology.create(:name => "D", :technology_category_id => language.id)
Technology.create(:name => "Delphi", :technology_category_id => language.id)
Technology.create(:name => "Eiffel", :technology_category_id => language.id)
Technology.create(:name => "Erlang", :technology_category_id => language.id)
Technology.create(:name => "Forth", :technology_category_id => language.id)
Technology.create(:name => "Fortran", :technology_category_id => language.id)
Technology.create(:name => "Go", :technology_category_id => language.id)
Technology.create(:name => "Groovy", :technology_category_id => language.id)
Technology.create(:name => "Haskell", :technology_category_id => language.id)
java = Technology.create(:name => "Java", :technology_category_id => language.id)
javascript = Technology.create(:name => "Javascript", :technology_category_id => language.id)
Technology.create(:name => "LabVIEW", :technology_category_id => language.id)
Technology.create(:name => "Lisp", :technology_category_id => language.id)
Technology.create(:name => "Logo", :technology_category_id => language.id)
Technology.create(:name => "Lua", :technology_category_id => language.id)
Technology.create(:name => "MATLAB", :technology_category_id => language.id)
Technology.create(:name => "ML", :technology_category_id => language.id)
Technology.create(:name => "NXT-G", :technology_category_id => language.id)
Technology.create(:name => "Objective-C", :technology_category_id => language.id)
Technology.create(:name => "Pascal", :technology_category_id => language.id)
Technology.create(:name => "Perl", :technology_category_id => language.id)
Technology.create(:name => "PHP", :technology_category_id => language.id)
Technology.create(:name => "Prolog", :technology_category_id => language.id)
Technology.create(:name => "Python", :technology_category_id => language.id)
Technology.create(:name => "R", :technology_category_id => language.id)
Technology.create(:name => "RPG", :technology_category_id => language.id)
Technology.create(:name => "Ruby", :technology_category_id => language.id)
Technology.create(:name => "SAS", :technology_category_id => language.id)
scala = Technology.create(:name => "Scala", :technology_category_id => language.id)
Technology.create(:name => "Scheme", :technology_category_id => language.id)
Technology.create(:name => "Scratch", :technology_category_id => language.id)
Technology.create(:name => "Smalltalk", :technology_category_id => language.id)
Technology.create(:name => "SQL", :technology_category_id => language.id)
Technology.create(:name => "Tcl", :technology_category_id => language.id)
Technology.create(:name => "Visual Basic", :technology_category_id => language.id)

Technology.create(:name => "CakePHP", :technology_category_id => w_a_framework.id)
django = Technology.create(:name => "Django", :technology_category_id => w_a_framework.id)
Technology.create(:name => "Ember.js", :technology_category_id => w_a_framework.id)
Technology.create(:name => "Play!", :technology_category_id => w_a_framework.id)
rails = Technology.create(:name => "Rails", :technology_category_id => w_a_framework.id)
Technology.create(:name => "Sinatra", :technology_category_id => w_a_framework.id)
Technology.create(:name => "Spring", :technology_category_id => w_a_framework.id)
Technology.create(:name => "Symfony", :technology_category_id => w_a_framework.id)

Technology.create(:name => "Emacs", :technology_category_id => tool.id)
Technology.create(:name => "Photoshop", :technology_category_id => tool.id)
Technology.create(:name => "Vim", :technology_category_id => tool.id)

Technology.create(:name => "Android", :technology_category_id => os.id)
Technology.create(:name => "iOS", :technology_category_id => os.id)

Technology.create(:name => "Node.js", :technology_category_id => s_s_framework.id)

Technology.create(:name => "AngularJS", :technology_category_id => c_s_framework.id)

Technology.create(:name => "Backbone.js", :technology_category_id => library.id)

joe = User.create!(:bio => "I am the creator", :email => "joe.d.forshaw@gmail.com", :password => "password", :password_confirmation => "password", :username => "Joe")

# Tutorial.create(:name => , :description => , :link => , :technology_id => Technology.find_by_name().id, :user_id => joe.id, :up_votes => 0, :down_votes => 0)

# Java tutorials
Tutorial.create(:name => "Oracle's Java Tutorials", :description => "The Java Tutorials are practical guides for programmers who want to use the Java programming language to create applications. They include hundreds of complete, working examples, and dozens of lessons. Groups of related lessons are organized into 'trails'.", :link => "http://docs.oracle.com/javase/tutorial/", :technology_id => java.id, :user_id => joe.id, :up_votes => 0, :down_votes => 0)
Tutorial.create(:name => "Tutorials Point - Java Tutorial", :description => "Java is a high-level programming language originally developed by Sun Microsystems and released in 1995. Java runs on a variety of platforms, such as Windows, Mac OS, and the various versions of UNIX. This tutorial gives a complete understanding on Java. This reference will take you through simple and practical approach while learning Java Programming language.", :link => "http://www.tutorialspoint.com/java/index.htm", :technology_id => java.id, :user_id => joe.id, :up_votes => 0, :down_votes => 0)
Tutorial.create(:name => "Free Interactive Java Tutorial: Learn Java" , :description => "Whether you are an experienced programmer or not, this website is intended for everyone who wishes to learn the Java programming language.", :link => "http://www.learnjavaonline.org/", :technology_id => java.id, :user_id => joe.id, :up_votes => 0, :down_votes => 0)

# Rails tutorials
Tutorial.create(:name => "Rails for Zombies", :description => "Introducing the upgraded way to learn Ruby on Rails in the browser, with no additional configuration needed. Learning Rails for the first time should be fun, and Rails for Zombies allows you to get your feet wet without having to worry about configuration. You'll watch five videos, each followed by exercises where you'll be programming Rails in your browser. Don't worry if you've played Rails for Zombies before, you get to start fresh with new achievements.", :link => "http://railsforzombies.org/", :technology_id => rails.id, :user_id => joe.id, :up_votes => 0, :down_votes => 0)
Tutorial.create(:name => "Learn Web Development with Rails", :description => "", :link => "http://ruby.railstutorial.org/ruby-on-rails-tutorial-book", :technology_id => rails.id, :user_id => joe.id, :up_votes => 0, :down_votes => 0)
Tutorial.create(:name => "Ruby on Rails Guides", :description => "", :link => "http://guides.rubyonrails.org/", :technology_id => rails.id, :user_id => joe.id, :up_votes => 0, :down_votes => 0)

# Scala tutorials
Tutorial.create(:name => "Scala School", :description => "Scala school started as a series of lectures at Twitter to prepare experienced engineers to be productive Scala programmers. Scala is a relatively new language, but draws on many familiar concepts. Thus, these lectures assumed the audience knew the concepts and showed how to use them in Scala. We found this an effective way of getting new engineers up to speed quickly. This is the written material that accompanied those lectures. We have found that these are useful in their own right.", :link => "http://twitter.github.com/scala_school/", :technology_id => scala.id, :user_id => joe.id, :up_votes => 0, :down_votes => 0)
Tutorial.create(:name => "Scala Documentation Tutorials", :description => "", :link => "http://docs.scala-lang.org/tutorials/", :technology_id => scala.id, :user_id => joe.id, :up_votes => 0, :down_votes => 0)
Tutorial.create(:name => "Tutorials Point - Scala Tutorial", :description => "", :link => "http://www.tutorialspoint.com/scala/", :technology_id => scala.id, :user_id => joe.id, :up_votes => 0, :down_votes => 0)

# Django tutorials
Tutorial.create(:name => "Full Django Tutorial Playlist", :description => "", :link => "http://www.youtube.com/playlist?list=PL385A53B00B8B158E", :technology_id => django.id, :user_id => joe.id, :up_votes => 0, :down_votes => 0)
Tutorial.create(:name => "Django by Example", :description => "This guide assumes some basic knowledge of Python and Django. If you haven't done this already, have a quick walk through Python tutorial and the Official Django tutorial. The goal of the guide is not to make something that merely works, but to make apps that can be useful, practical, easy, and fast. In other words, something that you might want to make for your own daily use.", :link => "http://lightbird.net/dbe/", :technology_id => django.id, :user_id => joe.id, :up_votes => 0, :down_votes => 0)
Tutorial.create(:name => "Writing your first Django app", :description => "Let's learn by example. Throughout this tutorial, we'll walk you through the creation of a basic poll application. It'll consist of two parts:
1) A public site that lets people view polls and vote in them.
2) An admin site that lets you add, change and delete polls.
Well assume you have Django installed already. You can tell Django is installed and which version by running the following command:", :link => "https://docs.djangoproject.com/en/dev/intro/tutorial01/", :technology_id => django.id, :user_id => joe.id, :up_votes => 0, :down_votes => 0)

# Javascript tutorials
Tutorial.create(:name => "W3Schools - Javascript tutorial", :description => "This tutorial is for you who want to learn JavaScript:
What JavaScript is, and how to make it work with HTML and CSS.
2. This tutorial is also for you who have used JavaScript before:
Bring your knowledge up to date. A lot has changed in JavaScript development in the last years.", :link => "http://www.w3schools.com/js/", :technology_id => javascript.id, :user_id => joe.id, :up_votes => 0, :down_votes => 0)
Tutorial.create(:name => "Tizag - Javascript tutorial", :description => "Before you begin this tutorial, you should have basic knowledge of HTML. Check out our Beginner and HTML tutorials to brush up on the basics. This tutorial will cover the basics of JavaScript, from where to place your JavaScript all the way to making your own JavaScript functions. Also, there will be some good programming practice tips throughout this tutorial.", :link => "http://www.tizag.com/javascriptT/", :technology_id => javascript.id, :user_id => joe.id, :up_votes => 0, :down_votes => 0)
Tutorial.create(:name => "Tutorials Point - Javascript tutorial", :description => "", :link => "http://www.tutorialspoint.com/javascript/", :technology_id => javascript.id, :user_id => joe.id, :up_votes => 0, :down_votes => 0)

