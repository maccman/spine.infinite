class Page extends Spine.Model
  @configure "Page", "name"
  @extend Spine.Model.Ajax
  
  @fetch: (params) ->
    index  = @last()?.id or 0
    return if index is @index
    @index = index
 
    params or= 
      data: {index: index}
      processData: true

    @ajax().fetch(params)

window.Page = Page