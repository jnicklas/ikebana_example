require 'https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js'
require '/outer_html.js'

describe 'jQuery.fn.outerHTML', ->
  it 'returns the html of an element', ->
    element = $('<div class="foo"><p>Test</p></div>').appendTo('#test')
    expect(element.outerHTML()).toEqual('<div class="foo"><p>Test</p></div>')
