

<div class="element-text-image d-flex flex-column flex-md-row flex-md-equal w-100 p-0 bg-"
         id="$Anchor" <% if $AOSEffect != "---" %> data-aos="$AOSEffect" <% end_if %>
         Style="overflow: hidden; <% if $EnableBackgroundColour %>background-color: {$BackgroundColour};<% end_if %><% if $BackgroundImage %>background-image:url($BackgroundImage.URL);background-repeat: no-repeat;background-size: cover;<% end_if %>background-position: $BackgroundPosition;<% if $BackgroundParalax %>background-attachment: fixed;<% end_if %><% if $MarginTop %>margin-top: 35px;<% end_if %><% if $MarginBottom %>margin-bottom: 35px;<% end_if %><% if $AddBorderBottom %>border-bottom-color:$BorderBottomColour;border-bottom-style:solid;border-bottom-width:1px;<% end_if %><% if $RemoveTopPadding %>padding-top:0px;<% end_if %><% if $RemoveBottomPadding %>padding-bottom:0px;<% end_if %>">
    <%--$Me.BackgroundColour--%>


    <% if $ImagePosition == 'left' %>
        <div class="text-center ti order-2 order-md-1">
            <div class="img-wrap">
                <%--$Image.FocusFill(1800, 800).ResponsiveTextImage--%>

                <picture>
                    <source
                        media="(min-width: 1600px)"
                        srcset="$Image.FocusFill(1000, 800).Url,
                                        $Image.FocusFill(2000, 1600).Url 2x">
                    <source
                        media="(min-width: 1080px)"
                        srcset="$Image.FocusFill(1080, 600).Url,
                                        $Image.FocusFill(1600, 1200).Url 2x">
                    <source
                        media="(min-width: 768px)"
                        srcset="$Image.FocusFill(600, 1080).Url,
                                        $Image.FocusFill(2160,700).Url 2x">
                    <source
                        media="(max-width: 768px)"
                        srcset="$Image.FocusFill(600, 400).Url,
                                        $Image.FocusFill(1200, 800).Url 2x">
                    <img
                        src="$Image.FocusFill(1000, 800).Url"
                        alt="$Title" class="img-fit">
                </picture>
                <%--<% with $Image %><img class="img-fluid img-fit" src="{$URL}" title="{$Up.Title}"><% end_with %>--%>
            </div>
        </div>
    <% end_if %>

    <div class="d-flex align-items-center justify-content-center ti order-1 order-md-2">
        <div class="container">
            <div class="row align-items-center justify-content-center align-self-stretch">
                <div class="col-22 col-xl-16 mx-auto section-content">
                    <% if $ShowTitle %>
                        <h2 class="text-white h4"> $Title</h2>
                        <hr>
                    <% end_if %>
                    <div class="text-white">$Text</div>
                </div>
            </div>
        </div>
    </div>

    <% if $ImagePosition == 'right' %>
        <div class="text-center ti order-1 order-md-3">
            <div class="img-wrap">
                <picture>
                    <source
                        media="(min-width: 1600px)"
                        srcset="$Image.FocusFill(1200, 700).Url,
                                        $Image.FocusFill(2400, 1400).Url 2x">
                    <source
                        media="(min-width: 1080px)"
                        srcset="$Image.FocusFill(1080, 600).Url,
                                        $Image.FocusFill(1600, 1200).Url 2x">
                    <source
                        media="(min-width: 768px)"
                        srcset="$Image.FocusFill(600, 1080).Url,
                                        $Image.FocusFill(2160,700).Url 2x">
                    <source
                        media="(max-width: 768px)"
                        srcset="$Image.FocusFill(600, 400).Url,
                                        $Image.FocusFill(1200, 800).Url 2x">
                    <img
                        src="$Image.FocusFill(1000, 800).Url"
                        alt="$Title" class="img-fit">
                </picture>
            </div>
        </div>
    <% end_if %>

</div>

<style>

    .img-wrap {
        position: relative;
        height: 100%;
        display: flex;
        flex-wrap: wrap;
        flex-direction: column;
        width: 100%;

    }

    @media (max-width: 768px) {
        .ti {
            flex: 1 1 auto;
        }

        .ti img {
            flex: 1 1 auto;
            height: 100%;
            max-height: fit-content;
            width: 100%;
        }
    }

    @media (min-width: 768px) {
        .ti {
            flex-basis: 50%;
        }
        .ti img {
            max-height: fit-content;
            min-height: -webkit-fill-available;
            position: absolute;

            left: 0;
            bottom: 0;
            right: 0;
            top: 0;
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
