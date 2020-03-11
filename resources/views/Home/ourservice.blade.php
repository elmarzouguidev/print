<section class="service-two sec-pad sec-pad-content-margin-30 thm-gray-bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="block-title mb-0">
                    <!--  <p class="block-title__tag-line ">Our Services</p>-->
                    <h2 class="block-title__title">
                        {{setting('home.service_title')}}
                    </h2>
                </div><!-- /.block-title -->
            </div><!-- /.col-lg-6 -->
            <div class="col-lg-6 d-flex">
                <div class="my-auto">
                    <p class="service-two__title-text">
                        {{setting('home.service')}}
                    </p>
                </div><!-- /.my-auto -->
            </div><!-- /.col-lg-6 -->
        </div><!-- /.row -->
        <div class="row-5-col">
            @foreach($services as $service)
                <div class="col-5-col">
                    <div class="service-two__single hvr-float-shadow content-margin-30">
                        <img src="{{Voyager::image($service->image)}}" alt="{{$service->seo}}" />
                        <h3 class="service-two__title">
                            <a href="">{{$service->title}}</a>
                        </h3><!-- /.service-two__title -->
                    </div><!-- /.service-two__single -->
                </div><!-- /.col-5-col -->
            @endforeach

        </div><!-- /.row-5-col -->
    </div><!-- /.container -->
</section><!-- /.service-two -->
