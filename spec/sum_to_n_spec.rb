require_relative '../functions'

describe 'sum_to_n' do
  it 'returns 55 for input 10' do
    expect(sum_to_n(10)).to eq(55)
  end
end
