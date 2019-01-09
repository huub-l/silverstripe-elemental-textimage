<section class="d-flex flex-column flex-md-row flex-md-equal w-100 p-0" id="$Anchor" <% if $AOSEffect != "---" %> data-aos="$AOSEffect" <% end_if %> Style="overflow: hidden; <% if $EnableBackgroundColour %>background-color: {$BackgroundColour};<% end_if %><% if $BackgroundImage %>background-image:url($BackgroundImage.URL);background-repeat: no-repeat;background-size: cover;<% end_if %>background-position: $BackgroundPosition;<% if $BackgroundParalax %>background-attachment: fixed;<% end_if %><% if $MarginTop %>margin-top: 35px;<% end_if %><% if $MarginBottom %>margin-bottom: 35px;<% end_if %><% if $AddBorderBottom %>border-bottom-color:$BorderBottomColour;border-bottom-style:solid;border-bottom-width:1px;<% end_if %><% if $RemoveTopPadding %>padding-top:0px;<% end_if %><% if $RemoveBottomPadding %>padding-bottom:0px;<% end_if %>">
    <%--$Me.BackgroundColour--%>


    <% if $ImagePosition == 'left' %>
      <div class="text-center  ti">
          <div class="img-wrap">
              <%--$Image--%> $Image.FocusFill(1800, 1400).ResponsiveTextImage
              <%--<% with $Image %><img class="img-fluid img-fit" src="{$URL}" title="{$Up.Title}"><% end_with %>--%>
          </div>
      </div>
    <% end_if %>

  <div class="d-flex align-items-center justify-content-center ti">
    <div class="row align-items-center justify-content-center align-self-stretch p-5">
      <div class="col-xl-20">
               <% if $ShowTitle %>
           <h4 class="text-white"> $Title</h4>
                   <hr>
        <% end_if %>

        <div class="mb-0 text-white section-content">$Text</div>
      </div>
    </div>
  </div>

    <% if $ImagePosition == 'right' %>
        <div class="text-center  ti">
            <div class="img-wrap">
            <%--$Image--%> $Image.FocusFill(1800, 1400).ResponsiveTextImage
            <%--<% with $Image %><img class="img-fluid img-fit" src="{$URL}" title="{$Up.Title}"><% end_with %>--%>
            </div>
        </div>
    <% end_if %>

</section>

<style>

    .img-wrap{
        position: relative;
        height: 100%;
        display: flex;
        flex-wrap: wrap;
        flex-direction: column;
        width: 100%;

    }
    .ti{
        flex: 1 1 100%;
    }

    .ti img{
        flex: 1 1 100%;
        height: 100%;
        /*max-height: fit-content;*/
        width: 100%;
    }
    @media (min-width: 768px){
        .ti img{
            position: absolute;
            left: 0;
        }
        .ti{
            flex-basis: 50%;

        }
    }
</style>

<% if $AOSEffect != "---" %>
    <% require css("https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css") %>
    <% require javascript("https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js") %>

    <script>
        AOS.init();
    </script>
<% end_if %>
