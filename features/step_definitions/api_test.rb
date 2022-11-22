
Given(/^I create and validate the new user with name "([^"]*)", email "([^"]*)"$/) do |name, email|
  @response = @req.post("public/v2/users/", {"name": "#{name}", "email": "#{email}", "gender": "male", "status": "inactive"})
  json = JSON.parse @response.body
  @userid = json["id"]
  binding.pry
  @status = @response.code

  if not @status.to_i.eql? 201
    raise "expect id : 201, actual id : #{@status.to_i}"
  end
end

Then(/^I will update the created username with "([^"]*)", and email with "([^"]*)"$/) do |name, email|
  binding.pry
  @response = @req.put("public/v2/users/#{@userid}", {"name": "#{name}", "email": "#{email}", "gender": "male", "status": "inactive"})
  @status = @response.code
  if not @status.to_i.eql? 200
    raise "expect id : 200, actual id : #{@status.to_i}"
  end
end

Then(/^I delete and validate the created new user$/) do
  @delete_status = @req.delete("public/v2/users/#{@userid}")
  if not @delete_status.to_i.eql? 204
    raise "expect id : 204, actual id : #{@delete_status}"
  end
end
