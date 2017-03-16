class PhotosController < ApplicationController
  <!-- Photos -->
  <h4>Photos</h4>
  <% @event.photos.each do |photo| %>
  <div class="panel panel-default">
    <div class="panel-heading">
      <%= image_tag photo.image.thumbnail %>
    </div>
  </div>
  <% end %>


end
