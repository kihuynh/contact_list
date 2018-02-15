require('rspec')
require('contacts')
require('pry')

describe('contacts') do
  it("An empty list") do
    expect(Contact.all()).to(eq([]))
  end

  describe("#save") do
  it("Save all contact info") do
    item = Contact.new("joe", "smith", "123 fake st", "Banker")
    item.save()
    expect(Contact.all()).to(eq([item]))
  end
end

describe("#id") do
    it("increments an id by 1 each time a new item is added") do
      item = Contact.new("joe", "smith", "123 fake st", "Banker")
      item.save()
      expect(item.id()).to(eq(1))
    end
  end
end
