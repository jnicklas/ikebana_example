require 'https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js'

describe 'Remplate', ->
  template('test.html')

  it 'loads template', ->
    expect($('#in_template').text()).toEqual('Hello world')

