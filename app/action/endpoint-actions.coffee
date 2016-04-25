itinerarySearchActions = require './itinerary-search-action'

module.exports.storeEndpoint = storeEndpoint = (actionContext, {target, endpoint}, done) ->

  actionContext.dispatch "setEndpoint",
    {target: target
    value:
      lat: endpoint.lat
      lon: endpoint.lon
      address: endpoint.address}
  done()

#sets endpoint and tries to do routing
module.exports.setEndpoint = (actionContext, payload) =>
  actionContext.executeAction(storeEndpoint, payload, (e) =>
    if e
      console.error "Could not store endpoint: ", e
    else actionContext.executeAction(itinerarySearchActions.route, undefined, (e) =>
      if e
        console.error "Could not route:", e
    )
  )

module.exports.setUseCurrent = (actionContext, target) ->
  havePosition =  actionContext.getStore('PositionStore').getLocationState().lat > 0

  actionContext.dispatch "useCurrentPosition", target
  if havePosition
    actionContext.executeAction itinerarySearchActions.route
  else
    #"splash screen"
    history  = require '../history'
    history.push pathname: '/splash'  ## redirect to "splash"

module.exports.swapEndpoints = (actionContext) ->
  actionContext.dispatch "swapEndpoints"
  actionContext.executeAction(itinerarySearchActions.route, undefined, (e) =>
    if e
      console.error "Could not route:", e
  )

module.exports.clearOrigin = (actionContext) ->
  actionContext.dispatch "clearOrigin"

module.exports.clearDestination = (actionContext) ->
  actionContext.dispatch "clearDestination"

module.exports.clearGeolocation = (actionContext) ->
  actionContext.dispatch "clearGeolocation"
