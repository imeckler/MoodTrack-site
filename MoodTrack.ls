whenClient = (f) -> if Meteor.isClient then f!

<- whenClient

Template.MoodUI.rendered = ->
  $ \#slider .change (e) -> $ \#moodlabel .text e.target.value

  $ \#logbutton .click (e) ~> 
    moodVal = @find '#slider' .value
    

Template.MoodUI.moodValue = -> Session.get \moodValue
