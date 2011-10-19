$ = jQuery
    
class Pages extends Spine.Controller
  className: 'list'
    
  elements:
    '.items': 'items'
    'footer': 'footer'
    
  constructor: ->
    super
    
    @html JST['app/views/pages/list']()
    
    Page.bind 'fetch', =>
      @el.addClass('loading')
    
    Page.bind 'refresh', =>
      @el.removeClass('loading')
      @render(arguments...)
      @footer.waypoint(offset: '100%')

    Page.fetch()

    @footer.bind 'waypoint.reached', @scroll
    
  render: (items = []) =>
    for item in items
      @items.append JST['app/views/pages/item'](item)
      
  scroll: (e, direction) =>
    @footer.waypoint('remove')
    Page.fetch()

window.Pages = Pages
