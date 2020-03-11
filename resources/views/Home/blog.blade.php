<section class="blog-one sec-pad sec-pad-content-margin-80">
    <div class="container">
        <div class="block-title text-center">
            <p class="block-title__tag-line ">Our Blog Posts</p>
            <h2 class="block-title__title">News & Articles</h2>
        </div><!-- /.block-title -->
        <div class="row">
            @foreach($posts as $post)
                <div class="col-lg-6">
                    <div class="blog-one__single content-margin-80 text-center">
                        <div class="blog-one__image-block">
                            <img src="{{Voyager::image($post->image)}}" alt="{{$post->title}}" />
                        </div><!-- /.blog-one__image-block -->
                        <div class="blog-one__text-block thm-gray-bg">
                            <div class="blog-one__meta">
                                <a class="blog-one__meta-item" href="#"><i class="fa fa-user"></i>by admin</a>
                                <a class="blog-one__meta-item" href="#"><i class="fa fa-calendar"></i>20 Feb,
                                    2019</a>
                                <a class="blog-one__meta-item" href="#"><i class="fa fa-comments"></i>3 comments</a>
                            </div><!-- /.blog-one__meta -->
                            <h3 class="blog-one__title">
                                <a href="blog-details.html">
                                    {{$post->title}}
                                </a>
                            </h3>
                            <p class="blog-one__text">
                                {{$post->excerpt}}
                            </p><!-- /.blog-one__text -->
                            <a href="{{route('blog.single',$post->slug)}}" class="blog-one__link"><i class="fa fa-angle-right"></i></a>
                        </div><!-- /.blog-one__text-block -->
                    </div><!-- /.blog-one__single -->
                </div><!-- /.col-lg-6 -->
            @endforeach

        </div><!-- /.row -->
    </div><!-- /.container -->
</section><!-- /.blog-one -->
