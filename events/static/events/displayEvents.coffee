window.displayEvents = (eventData, grid = false) ->
  $list = $(".events-highlights")
  if Object.keys(eventData).length == 0
    $list.append $("<h4 class='event-title'>Tällä hetkellä ei tulevia tapahtumia.</h4>")
  for event in eventData
    if event.info_url?
      eventLink=event.info_url
    else
      eventLink = "http://www.hel.fi/www/helsinki/fi/tapahtumakalenteri/tapahtuma/?id=" + event.id
    if event.images.length > 0
      eventImage=event.images[0].url
    else
      eventImage = "/static/images/helsinki-vaakuna.svg"
    if grid
      $li = $("<div class='col-sm-6 col-md-4' />")
      template = """
        <div class='theme-preview match-height'>
          <a class='theme-thumbnail link-unstyled' href="#{eventLink}"><img src="#{eventImage}" /></a>
          <small class="card-type">
            <time datetime="#{event.start_time}"></time>#{event.start_time} @ #{event.location}
          </small>
          <a class='link-unstyled' href="#{eventLink}"><h3>#{event.name}</h3></a>
          <p>#{event.short_description}</p>
        </div>
      """
    else
      $li = $("<div class='event-list__item' />")
      template = """
        <h4 class="event-title">#{event.name.fi}</h4>
        <div class="event-date"><time itemprop="startDate" datetime="#{event.start_time}">#{event.start_time}</time></div>
        <div class="event-location">#{event.location}</div>
        <a href="#{eventLink}">Lue lisää »</a>
      """
    $li.append $($.trim template)
    $list.append $li
  # format dates
  $.timeago.settings.relativeTime = true
  $("time").timeago()