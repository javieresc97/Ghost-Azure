<<<<<<< HEAD
'use strict'

$ ->

  showSearch = ->
    $(".content").hide()
    $('#search-results').addClass('active')

  hideSearch = ->
    $(".content").show()
    $('#search-results').removeClass('active')

  $("#search-field").ghostHunter
    results           : "#search-results"
    zeroResultsInfo   : false
    onKeyUp           : true
    displaySearchInfo : true
    result_template   :
      """
      <a class="result" href='{{link}}'>
        <h2>{{title}}</h2>
        <h4>{{pubDate}}</h4>
      </a>
      """
    onComplete : (query) ->
      if query.length > 0 then showSearch() else hideSearch()
=======
'use strict'

$ ->

  showSearch = ->
    $(".content").hide()
    $('#search-results').addClass('active')

  hideSearch = ->
    $(".content").show()
    $('#search-results').removeClass('active')

  $("#search-field").ghostHunter
    results           : "#search-results"
    zeroResultsInfo   : false
    onKeyUp           : true
    displaySearchInfo : true
    result_template   :
      """
      <a class="result" href='{{link}}'>
        <h2>{{title}}</h2>
        <h4>{{pubDate}}</h4>
      </a>
      """
    onComplete : (query) ->
      if query.length > 0 then showSearch() else hideSearch()
>>>>>>> 4927e3710fb57e1f176383c701f884cc9f573b04
