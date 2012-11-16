Meteor.publish 'userData' ->
  Meteor.users.find {_id: @userId} {
    fields: {moods: 1}
  }

Meteor.users.allow do
  update: ->
    console.log @userId