# Coding Dojo - Ruby on Rails December 2017

Welcome Rubyists 

> “Often people, especially computer engineers, focus on the machines. They think, "By doing this, the machine will run faster. By doing this, the machine will run more effectively. By doing this, the machine will something something something." They are focusing on machines. But in fact we need to focus on humans, on how humans care about doing programming or operating the application of the machines. We are the masters. They are the slaves.”
- Yukihiro Matsumoto


## Setup
 1. Fork this repo to your github account.
 2. Clone it locally onto your laptop.
 3. Create a folder with your name, ex: cody_williams
 4. Add *this* (https://github.com/CodingDojoDallas/ruby_dec_2017/) repo as a REMOTE to your locally cloned copy.
```
git remote add upstream https://github.com/codingdojodallas/ruby_dec_2017
```
 5. Profit!
# Daily Commits

Please commit daily. That way we can provide you with feedback :) or just a thumbs up if everything looks good. Here is a good resource that describes how daily commit process should go.

https://www.dropbox.com/s/h3texmoqm801j8w/github_workflow_v4.pdf?dl=0

NOTE: If you don't get in at least one pull request daily, then *_ya ain't serious_*.

## Videos
Virtualbox/Vagrant - https://youtu.be/ipEVDCdk3po <br>
Fundamentals - https://youtu.be/cFdMPCl1Rr0 <br>
OOP - https://youtu.be/Lr1YSKSVM8Q <br>
Ruby Olympics / Rails Intro - https://youtu.be/bsimKSJ3Ofo <br>
Models (Validations/Migrations/Relationships) - https://youtu.be/hL5N8HBsw4w <br>
Self-join - https://youtu.be/ScTp79u6nMU <br>
Routes/Controllers Lecture - https://youtu.be/phoKZVMg4-4 <br>
Controllers - https://youtu.be/k4ttpRgRGV8 <br>
Forms / Named Routes - https://youtu.be/B3mOcqreZnk <br>
Layouts / Nested Resources - https://youtu.be/CCRa8GhtJ54 <br>
Rails TDD - https://youtu.be/zTjWLJdkyDo <br>
Authentication - https://youtu.be/z3YImITMi8E (Login and Registration) <br>
Controller Filters - https://youtu.be/b1MxUVZttkE <br>
Login/Registration Port & Concepts Practice - https://youtu.be/854a-1CAEfo <br>
Belt Reviewer - https://youtu.be/4YxCpdPq1pI <br>
Postgres Self-Join Many-To-Many - https://youtu.be/wSD-yTp2cdw <br>

## Demos
Ninja Gold - https://youtu.be/KvHGoN-kw-s <br>
Student Dashboard - https://youtu.be/WiQegfcDzpw <br>

## Resources

[Ruby v2.3.1 Documentation](http://ruby-doc.org/core-2.3.1/ "Ruby v2.3.1 Documentation") <br>

[Rails v4.2.7 Documentation](http://guides.rubyonrails.org/v4.2/ "Rails v4.2.7 Documentation") <br>

[Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide "Ruby Style Guide") <br>

[Active Record Validations](http://guides.rubyonrails.org/active_record_validations.html "Active Record Validations") <br>

http://www.rubyinside.com/

https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers

http://api.rubyonrails.org/classes/ActiveRecord/QueryMethods.html

http://api.rubyonrails.org/classes/ActiveModel/Validations/HelperMethods.html

## Articles

[Puts vs. Print vs. P](https://gist.github.com/MilanGrubnic70/11092705 "Puts vs. Print vs. P") <br>

[Understanding Ruby Blocks](http://mixandgo.com/blog/mastering-ruby-blocks-in-less-than-5-minutes "Understanding Ruby Blocks") <br>

[Creating Multiple Associations with the Same Table](http://www.spacevatican.org/2008/5/6/creating-multiple-associations-with-the-same-table/ "Creating Multiple Associations with the Same Table") <br>

[Understanding Polymorphic Associations](https://launchschool.com/blog/understanding-polymorphic-associations-in-rails "Understanding Polymorphic Associations") <br>

[What's the Deal With Polymorphic Associations?](https://robots.thoughtbot.com/whats-the-deal-with-rails-polymorphic-associations "What's the Deal With Polymorphic Associations?") <br>

[Creating Polymorphic Associations in Rails](http://culttt.com/2016/01/13/creating-polymorphic-relationships-in-ruby-on-rails/ "Creating Polymorphic Associations in Rails") <br>

[Active Record Callbacks](http://guides.rubyonrails.org/active_record_callbacks.html#available-callbacks "Active Record Callbacks") <br>

An important note:
*before_save* is called every time an object is saved. So for new and existing objects. (create and update action)
*before_create* only before creation. So only for new objects (create action, but not update)
