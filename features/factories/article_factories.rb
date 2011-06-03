Factory.define :article1, :class => Article do |a|
  a.id "1"
  a.title "Titulos"
  a.body "Lorem ipsum dol..."
  a.status "posted"
  a.date_posted Time.now
  a.author_id "1"
end

