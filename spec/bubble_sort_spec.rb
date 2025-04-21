require_relative '../functions'

describe 'bubble_sort' do
  it 'sorts the array [5, 3, 8, 1, 2] to [1, 2, 3, 5, 8]' do
    expect(bubble_sort([5, 3, 8, 1, 2])).to eq([1, 2, 3, 5, 8])
  end
end
