
ContentFlow =

    getFlowCls: () ->
        # Return the content flow model class to use for the application
        return ContentFlow.FlowModel

    getFlowDOMelement: (flow) ->
        # Return the DOM element represented by a content flow
        return document.querySelector("data-cf-flow=#{ flow.id or flow }")

    getFlowIdFromDOMElement: (element) ->
        # Return the Id of a content flow from a DOM element
        return delement.getattr('data-cf-flow')

    getSnippetCls: (flow) ->
        # Return the snippet model class to use for the application
        return ContentFlow.SnippetModel

    getSnippetDOMElement: (flow, snippet) ->
        # Return the DOM element represented by a snippet
        return document.querySelector("data-cf-snippet=#{ snippet.id }")

    getSnippetIdFromDOMElement: (element) ->
        # Return the Id of a snippet from a DOM element
        return delement.getattr('data-cf-snippet')

    getSnippetTypeCls: (flow) ->
        # Return the snippet type model class to use for the application
        return ContentFlow.SnippetTypeModel


# Export the namespace

# Browser (via window)
if typeof window != 'undefined'
    window.ContentFlow = ContentFlow

# Node/Browserify
if typeof module != 'undefined' and module.exports
    exports = module.exports = ContentFlow