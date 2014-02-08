# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# $ ->
#   $(document).on "mouseenter", ".glyphicon-ok-circle", ->
#     $(this).toggleClass "glyphicon-ok-circle"
#     $(this).toggleClass "glyphicon-remove-circle"

#   $(document).on "mouseleave", ".glyphicon-ok-circle", ->
#     $(this).toggleClass "glyphicon-ok-circle"
#     $(this).toggleClass "glyphicon-remove-circle"

#   return
# $ ->
# 	$(".favorite-form").on('hover', '.glyphicon-ok-circle', (->
# 		$(this).toggleClass("glyphicon-ok-circle"));

# 	$(".favorite-form").on('hover', '.glyphicon-ok-circle', (->
# 		$(this).toggleClass("glyphicon-remove-circle")); 
# $ ->
#   $(document).on $(".glyphicon-ok-circle").hover(->
#     $(this).toggleClass "glyphicon-ok-circle"
#     $(this).toggleClass "glyphicon-remove-circle"
#   , ->
#     $(this).toggleClass "glyphicon-ok-circle"
#     $(this).toggleClass "glyphicon-remove-circle"
#   ), ".glyphicon-ok-circle"
#   return
# $ ->
#     $(document).on (->
#       $('.glyphicon-ok-circle').hover (->
#         $(this).toggleClass "glyphicon-ok-circle"
#         $(this).toggleClass "glyphicon-remove-circle"
#         return
#       ), ->
#         $(this).toggleClass "glyphicon-ok-circle"
#         $(this).toggleClass "glyphicon-remove-circle"
#         return
#     ), ".glyphicon-ok-circle"
$ ->
	$(document).on 
		mouseenter: ->
			$(this).toggleClass("glyphicon-ok-circle")
			$(this).toggleClass("glyphicon-remove-circle")

		mouseleave: ->
			$(this).toggleClass("glyphicon-ok-circle")
			$(this).toggleClass("glyphicon-remove-circle")
	, ".glyphicon-ok-circle"

	$(document).on 
		mouseenter: ->
			$(this).toggleClass("glyphicon-ok-circle")
			$(this).toggleClass("glyphicon-remove-circle")

		mouseleave: ->
			$(this).toggleClass("glyphicon-ok-circle")
			$(this).toggleClass("glyphicon-remove-circle")
	, ".glyphicon-remove-circle"