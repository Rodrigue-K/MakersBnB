require 'list_space'

describe Space do
  let!(:space) { Space.create(name: "Makers", price: 435, description: "Nice") }

  it 'has a name' do
    expect(space.name).to eq( 'Makers')
  end
  it 'has a price' do
    expect(space.price).to eq(435)
  end
  it 'has a description' do
    expect(space.description).to eq('Nice')
  end 
end
