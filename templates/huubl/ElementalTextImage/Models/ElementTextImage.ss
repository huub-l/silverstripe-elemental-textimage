<section class="d-md-flex flex-md-equal w-100 p-0" id="$Anchor" <% if $AOSEffect != "---" %> data-aos="$AOSEffect" <% end_if %> Style="height: 450px; <% if $EnableBackgroundColour %>background-color: {$BackgroundColour};<% end_if %><% if $BackgroundImage %>background-image:url($BackgroundImage.URL);background-repeat: no-repeat;background-size: cover;<% end_if %>background-position: $BackgroundPosition;<% if $BackgroundParalax %>background-attachment: fixed;<% end_if %><% if $MarginTop %>margin-top: 35px;<% end_if %><% if $MarginBottom %>margin-bottom: 35px;<% end_if %><% if $AddBorderBottom %>border-bottom-color:$BorderBottomColour;border-bottom-style:solid;border-bottom-width:1px;<% end_if %><% if $RemoveTopPadding %>padding-top:0px;<% end_if %><% if $RemoveBottomPadding %>padding-bottom:0px;<% end_if %>">
    <%--$Me.BackgroundColour--%>


    <% if $ImagePosition == 'left' %>
      <div class="text-center overflow-hidden" style="flex-basis: 50%;">
          <%--$Image--%>
        <% with $Image %><img class="img-fluid img-fit" src="{$URL}" title="{$Up.Title}"><% end_with %>
      </div>
    <% end_if %>

  <div class="d-flex align-items-center justify-content-center" style="flex-basis: 50%;">
    <div class="row align-items-center justify-content-center align-self-stretch p-5">
      <div class="col-xl-20">
               <% if $ShowTitle %>
           <h4 class="text-white"> $Title</h4>
        <% end_if %>
        <hr>
        <div class="mb-0 text-white">$Text</div>
      </div>
    </div>
  </div>

    <% if $ImagePosition == 'right' %>
        <div class="text-center overflow-hidden" style="flex-basis: 50%;">
            <%--$Image--%>
            <% with $Image %><img class="img-fluid img-fit" src="{$URL}" title="{$Up.Title}"><% end_with %>
        </div>
    <% end_if %>

</section>

<% if $AOSEffect != "---" %>
    <% require css("https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css") %>
    <% require javascript("https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js") %>

    <script>
        AOS.init();
    </script>
<% end_if %>
