command: "defaults -currentHost read com.apple.notificationcenterui doNotDisturb"

refreshFrequency: '5s'

render: (output) ->
  """
  <div class="dnd"></div>
  """

update: (output, el) ->
  if (parseInt(output) == 0)
    output = ""
  else
    output = "DND"
  $(".dnd", el).text("#{output}")

style: """
  font-family: Helvetica Neue
  font-weight: bold
  font-size: 14px
  top: 0px
  line-height: 25px
  color: red
  right: 4em
  text-shadow: 0 0 3px black
"""