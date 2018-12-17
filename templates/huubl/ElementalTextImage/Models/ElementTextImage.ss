<section class="d-md-flex flex-md-equal w-100" id="$Anchor" Style="<% if $EnableBackgroundColour %>background-color:$BackgroundColour;<% end_if %><% if $BackgroundImage %>background-image:url($BackgroundImage.URL);background-repeat: no-repeat;background-size: cover;<% end_if %>background-position: $BackgroundPosition;<% if $BackgroundParalax %>background-attachment: fixed;<% end_if %><% if $MarginTop %>margin-top: 35px;<% end_if %><% if $MarginBottom %>margin-bottom: 35px;<% end_if %><% if $AddBorderBottom %>border-bottom-color:$BorderBottomColour;border-bottom-style:solid;border-bottom-width:1px;<% end_if %><% if $RemoveTopPadding %>padding-top:0px;<% end_if %><% if $RemoveBottomPadding %>padding-bottom:0px;<% end_if %>">

    <% if $VariantClasses == 'imageleft' %>
      <div class="bg-light text-center overflow-hidden">
          $Image
        <%--<% with $Image %><img class="img-fluid img-fit" src="{$URL}" title="{$Up.Title}"><% end_with %>--%>
      </div>
    <% end_if %>

  <div class="bg-primary d-flex">
    <div class="row align-items-center justify-content-center align-self-stretch p-5">
      <div class="col-xl-10">
               <% if $ShowTitle %>
           <h4 class="text-white"> $Title</h4>
        <% end_if %>
        <hr>
        <div class="mb-0 text-white">$Text</div>
      </div>
    </div>
  </div>

    <% if $VariantClasses == 'imageright' %>
        <div class="bg-light text-center overflow-hidden">
            $Image
            <%--<% with $Image %><img class="img-fluid img-fit" src="{$URL}" title="{$Up.Title}"><% end_with %>--%>
        </div>
    <% end_if %>

</section>

