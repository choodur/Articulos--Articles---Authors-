Factory.define :comment1, :class => Comment do |c|
  c.email "test@abc.com"
  c.body "Nice one."
  c.article_id "1"
end

Factory.define :comment2, :class => Comment do |c|
  c.email "abc@test.com"
  c.body "Very inconclusive."
  c.article_id "1"
end

Factory.define :comment3, :class => Comment do |c|
  c.email "test@abc.com"
  c.body "Really? I found it reasonable."
  c.article_id "1"
end
