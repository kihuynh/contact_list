require('rspec')
require('contacts')
require('pry')

describe('contacts') do
  it("An empty list") do
  expect(Contact.all()).to(eq([]))
   end
end
