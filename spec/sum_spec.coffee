require '/sum.js'

describe 'sum', ->
  it 'returns the sum of a list of integers', ->
    expect(sum([1, 5, 2, 9])).toEqual(17)
