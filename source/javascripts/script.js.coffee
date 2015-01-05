parallax = ->
  $parallax = $(".parallax")
  top = $parallax.offset().top
  $parallax.css
    "top": top
    "transform": "none"
  $(window).scroll ->
    scrolled =  $(document).scrollTop()
    $parallax.css
      "top": top + (scrolled * 0.5)
      "transform": "none"

comingSoon = ->
  buttons = [
    $ ".link-speakers"
    $ ".link-sponsors"
    # $ ".link-agenda"
  ]
  sections = [
    "Speakers"
    "Sponsors"
    # "Agenda"
  ]

  $.each buttons, (index,element) ->
    element.click (e) ->
      e.preventDefault()
      alert sections[index] + " section coming soon!"

# badBrowserBorderRadius = ->
#   toHaveBorderRadius = [
#     $ ".speaker img"
#     $ ".social i"
#   ]
#   radii = [
#     "100"
#     "13.5"
#   ]

#   $.each toHaveBorderRadius, (index,element) ->
#     element.corner(radii[index] + "px")

$ ->
  comingSoon()
  $(window).load ->
    parallax()

#   $list = $(".isotope").imagesLoaded ->
#     $list.isotope({
#       itemSelector: '.item'
#       layoutMode: 'fitRows'
#     })

  # if badBrowser
  #   badBrowserBorderRadius()
