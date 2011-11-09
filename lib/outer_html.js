jQuery.fn.outerHTML = function() {
  return jQuery(jQuery('<div></div>').html(this.clone())).html();
}
