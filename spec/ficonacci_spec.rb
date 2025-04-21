require_relative '../functions'

describe 'fibonacci' do
  it 'returns 21 for input 8' do
    expect(fibonacci(8)).to eq(21)
  end
end
