<div class="main-banner-wrapper">
    <section class="banner-style-one owl-theme owl-carousel">
        @foreach($sliders as $slider)
            <div class="slide slide-one" style="background-image: url({{Voyager::image($slider->image)}});">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                        <!--  <span class="tag-line">Welcome to  haymacprint </span>-->
                            <h3 class="banner-title">{{$slider->title}}</h3>
                            <p>
                                {{$slider->content}}
                            </p>
                            <div class="btn-block">
                                <a href="{{route('promos')}}" class="banner-btn">Order Online Now</a>
                            </div><!-- /.btn-block -->
                        </div><!-- /.col-lg-12 -->
                    </div><!-- /.row -->
                </div><!-- /.container -->
            </div><!-- /.slide -->
        @endforeach
    </section><!-- /.banner-style-one -->
    <div class="carousel-btn-block banner-carousel-btn">
        <span class="carousel-btn left-btn"><i class="dexen-icon-music-player-play"></i></span>
        <span class="carousel-btn right-btn"><i class="dexen-icon-music-player-play"></i></span>
    </div><!-- /.carousel-btn-block banner-carousel-btn -->
</div><!-- /.main-banner-wrapper -->
