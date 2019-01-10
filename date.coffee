command: "date +\"%a ∙ %d %b\""

refreshFrequency: 10000 # ms

render: (output) ->
  """
  <div class="date"
  </div>
  """

update: (output, el) ->
    $(".date", el).text("#{output}")

style: """
  font-family: Helvetica Neue
  font-weight: bold
  font-size: 14px
  top: 0px
  line-height: 25px
  color: white
  right: calc(50% - 100px)
  width:200px
  text-align:center
  text-shadow: 0 0 3px black
"""