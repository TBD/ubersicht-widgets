command: "date +\"%H:%M\""

refreshFrequency: 10000 # ms

render: (output) ->
  """
  <div class="time"></div>
  <progress min=0 max=59 value=50></progress>
  """

update: (output, el) ->
    [hour, min] = output.trim().split(":")
    $(".time", el).text("#{hour}:#{min}")
    $("progress").val(min)

style: """
  font-family: Helvetica Neue
  font-weight: bold
  font-size: 14px
  color: white
  top: 4px
  left: .3em
  text-shadow: 0 0 2px black

  progress
    appearance: none
    transform: rotate(90deg)
    position absolute
    left: calc(-100vh/2 + 1.3em)
    top: calc(100vh / 2 + .3em) 
    width: calc(100vh - 2em)
    height: 2px    

  progress[value]::-webkit-progress-bar
    background: black        

  progress[value]::-webkit-progress-value
    background: white;
    transition: width 5s;    
"""