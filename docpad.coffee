# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
  templateData:
    site:
      title: "ReDBox: Research Data Box"
      heading1: "ReDBox"
      heading2: "Research Data Box"
      url: 'https://redbox-mint.github.io/website-redboxresearchdata'
      styles: [
        "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
      ]
      scripts: [
        "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
      ]
    getSiteStyles: ->
      for style in @site.styles
        return "<link rel=\"stylesheet\" type=\"text/css\" href=\"#{style}\">"
    getSiteScripts: ->
      for script in @site.scripts
        return "<script defer=\"defer\" src=\"#{script}\"></script>"
    getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title
    getHeading1: -> if @document.heading1 then @document.heading1 else @site.heading1
    getHeading2: -> if @document.heading2 then @document.heading2 else @site.heading2
    getUrl: (document) ->
      return @site.url + (document.url)
    getMenu: (document) ->
      return @getCollection("html").findAllLive({type:"menu", title:"#{document.title}"}).toJSON()[0]
  collections:
    pages: -> @getCollection("html").findAllLive({type:"page"},[{order:1}]).on "add", (model) ->
      model.setMetaDefaults({layout:"generic"})
    rowcells: -> @getCollection("html").findAllLive({type:"rowcell"},[{order:1}]).on "add", (model) ->
      model.setMetaDefaults({layout:"box"})
  environments:
    development:
      templateData:
        site:
          url: 'http://localhost:9778'
  plugins:
    consolidate:
      eco: true

}

# Export the DocPad Configuration
module.exports = docpadConfig
