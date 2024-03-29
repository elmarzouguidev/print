<div class="main-banner-wrapper">
    <section class="banner-style-two owl-theme owl-carousel">
        @foreach($sliders as $slider)
            <div class="slide slide-one" style="background-image: url(images/slider/slider-2-1.jpg);">
                <img src="{{Voyager::image($slider->image)}}" alt="{{$slider->title}}" class="slider-moc" />
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <span class="tag-line">{{$slider->content}}</span>
                            <h3 class="banner-title">
                            <!--  Quality <br>  & <span>haymacprint</span> <br> Services-->
                                {{$slider->title}}
                            </h3>
                            <div class="btn-block">
                                <a href="{{route('promos')}}" class="banner-btn">Order Online Now</a>
                            </div><!-- /.btn-block -->
                        </div><!-- /.col-lg-12 -->
                    </div><!-- /.row -->
                </div><!-- /.container -->
            </div><!-- /.slide -->
        @endforeach

    </section><!-- /.banner-style-two -->
    <div class="carousel-btn-block banner-carousel-btn">
        <span class="carousel-btn left-btn"><i class="dexen-icon-music-player-play"></i></span>
        <span class="carousel-btn right-btn"><i class="dexen-icon-music-player-play"></i></span>
    </div><!-- /.carousel-btn-block banner-carousel-btn -->
</div><!-- /.main-banner-wrapper -->
