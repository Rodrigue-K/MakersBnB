require 'space'

describe Space do
  let!(:space) do
    Space.create(
      name: "Makers",
      price: 435,
      description: "Nice",
      available_from: "2019-01-17",
      available_to: "2019-01-19"
    )
  end

  it 'has a name' do
    expect(space.name).to eq('Makers')
  end

  it 'has a price' do
    expect(space.price).to eq(435)
  end

  it 'has a description' do
    expect(space.description).to eq('Nice')
  end

  describe '#make_dates' do
    let(:date_from) { space.available_from }
    let(:date_to) { space.available_to }

    it 'makes an array' do
      expect(space.make_dates(date_from, date_to)).to be_an(Array)
    end
  end
end
