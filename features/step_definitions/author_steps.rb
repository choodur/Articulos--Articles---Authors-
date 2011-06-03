Given /^authors exist$/ do
  @author = Factory.create(:author1)
  And %{I am on the authors page}
end

Given /^that authors already exist$/ do
  @author = Factory.create(:author1)
end

