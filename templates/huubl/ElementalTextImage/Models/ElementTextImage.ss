<section class="d-md-flex flex-md-equal w-100 $VariantClasses" id="$Anchor">
  <div class="bg-light text-center overflow-hidden">
      $Image
    <%--<% with $Image %><img class="img-fluid img-fit" src="{$URL}" title="{$Up.Title}"><% end_with %>--%>
  </div>
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
</section>

