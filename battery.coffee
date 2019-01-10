command: "pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';'"

refreshFrequency: '10s'

render: (output) ->
  """
  <div class="battery"></div>
  """

update: (output, el) ->
  if (parseInt(output.replace("%", "")) < 10)
    output = "⚠️ #{output}"
  $(".battery", el).text("#{output}")

style: """
  font-family: Helvetica Neue
  font-weight: bold
  font-size: 14px
  top: 0px
  line-height: 25px
  color: white
  right: 15px
  text-shadow: 0 0 3px black
"""