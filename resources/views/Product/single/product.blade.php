<section class="blog-details sec-pad sec-pad-content-margin-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 content-margin-50">
                <div class="blog-details__image">
                    <img src="{{Voyager::image($product->image)}}" alt="{{$product->title}}" />
                </div><!-- /.blog-details__image -->
                <div class="blog-details__content thm-gray-bg text-center">
                
                    <h3 class="blog-one__title">{{$product->title}}</h3>
                    <p class="blog-one__text">
                    {!! $product->content !!}
                    </p><!-- /.blog-one__text -->
                </div><!-- /.blog-details__content -->
                <div class="blog-details__tags-share thm-gray-bg">
                    <div class="blog-details__tags">
                        <span class="blog-details__tags-title">Tags</span>
                        <a class="blog-details__tags-link" href="#">Printing</a>
                        <a class="blog-details__tags-link" href="#">Copying</a>
                        <a class="blog-details__tags-link" href="#">Copying</a>
                    </div><!-- /.blog-details__tags -->
                    <div class="blog-details__social">
                        <a class="blog-details__social-link" href="#"><i class="fa fa-facebook-f"></i></a>
                        <a class="blog-details__social-link" href="#"><i class="fa fa-twitter"></i></a>
                        <a class="blog-details__social-link" href="#"><i class="fa fa-youtube-play"></i></a>
                        <a class="blog-details__social-link" href="#"><i class="fa fa-pinterest"></i></a>
                    </div><!-- /.blog-details__social -->
                </div><!-- /.blog-details__tags-share -->
            
           
            
                <div class="block-title">
                    <p class="block-title__tag-line ">Read Comments</p>
                    <h2 class="block-title__title">2 Comments</h2>
                </div><!-- /.block-title -->
                <div class="contact-block-one__form row">
                    <div class="col-lg-6">
                        <input type="text" name="name" placeholder="Your name">
                    </div><!-- /.col-lg-6 -->
                    <div class="col-lg-6">
                        <input type="text" name="email" placeholder="Email address">
                    </div><!-- /.col-lg-6 -->
                    <div class="col-lg-12">
                        <textarea name="message" placeholder="Write message"></textarea>
                        <button type="submit">Submit Comments</button>
                    </div><!-- /.col-lg-12 -->                            
                </div><!-- /.contact-block-one_form -->
            </div><!-- /.col-lg-8 -->
            <div class="col-lg-4 content-margin-50">
                <div class="sidebar">
                    <div class="sidebar__single sidebar__search">
                        <form action="#" class="sidebar__search-form">
                            <input type="text" name="search" placeholder="Search">
                            <button type="submit" class="sidebar__search_btn"><i class="fa fa-search"></i></button>
                        </form>
                    </div><!-- /.sidebar__single -->
                    <div class="sidebar__single sidebar__recent-post">
                        <h3 class="sidebar__title">Recent Posts</h3><!-- /.sidebar__title -->
                        <div class="sidebar__recent-post__wrap">
                            <div class="sidebar__recent-post__single">
                                <div class="sidebar__recent-post__image">
                                    <img src="images/blog/lp-1-1.jpg" alt="Awesome Image" />
                                </div><!-- /.sidebar__recent-post__image -->
                                <div class="sidebar__recent-post__content">
                                    <span class="sidebar__recent-post__date">20 Jan, 2019</span>
                                    <h4 class="sidebar__recent-post__title"><a href="blog-details.html"> What Final Touched Can I Add into my Business...</a></h4><!-- /.sidebar__recent-post__title -->
                                </div><!-- /.sidebar__recent-post__content -->
                            </div><!-- /.sidebar__recent-post__single -->
                            <div class="sidebar__recent-post__single">
                                <div class="sidebar__recent-post__image">
                                    <img src="images/blog/lp-1-2.jpg" alt="Awesome Image" />
                                </div><!-- /.sidebar__recent-post__image -->
                                <div class="sidebar__recent-post__content">
                                    <span class="sidebar__recent-post__date">15 Jan, 2019</span>
                                    <h4 class="sidebar__recent-post__title"><a href="blog-details.html">Learn About Bleed, Trim and Other Printing...</a></h4><!-- /.sidebar__recent-post__title -->
                                </div><!-- /.sidebar__recent-post__content -->
                            </div><!-- /.sidebar__recent-post__single -->
                            <div class="sidebar__recent-post__single">
                                <div class="sidebar__recent-post__image">
                                    <img src="images/blog/lp-1-3.jpg" alt="Awesome Image" />
                                </div><!-- /.sidebar__recent-post__image -->
                                <div class="sidebar__recent-post__content">
                                    <span class="sidebar__recent-post__date">20 Jan, 2019</span>
                                    <h4 class="sidebar__recent-post__title"><a href="blog-details.html"> What Final Touched Can I Add into my Business...</a></h4><!-- /.sidebar__recent-post__title -->
                                </div><!-- /.sidebar__recent-post__content -->
                            </div><!-- /.sidebar__recent-post__single -->
                        </div><!-- /.sidebar__recent-post__wrap -->
                    </div><!-- /.sidebar__single -->
                    <div class="sidebar__single sidebar__tags">
                        <h3 class="sidebar__title">Popular Tags</h3><!-- /.sidebar__title -->
                        <ul class="sidebar__tags-list clearfix">
                            <li class="sidebar__tags-list-item">
                                <a href="#">Printing</a>
                            </li>
                            <li class="sidebar__tags-list-item">
                                <a href="#">Businesscards</a>
                            </li>
                            <li class="sidebar__tags-list-item">
                                <a href="#">Flyers</a>
                            </li>
                            <li class="sidebar__tags-list-item">
                                <a href="#">Flyers</a>
                            </li>
                            <li class="sidebar__tags-list-item">
                                <a href="#">Designing</a>
                            </li>
                        </ul><!-- /.sidebar__tags-list -->
                    </div><!-- /.sidebar__single -->
                    <div class="sidebar__single sidebar__categories">
                        <h3 class="sidebar__title">Popular Tags</h3><!-- /.sidebar__title -->
                        <ul class="sidebar__categories-list">
                            <li class="sidebar__categories-list-item">
                                <a href="#">Business Cards</a>
                            </li>
                            <li class="sidebar__categories-list-item">
                                <a href="#">Stickers & Labels</a>
                            </li>
                            <li class="sidebar__categories-list-item">
                                <a href="#">Greeting Cards</a>
                            </li>
                            <li class="sidebar__categories-list-item">
                                <a href="#">Postcards</a>
                            </li>
                            <li class="sidebar__categories-list-item">
                                <a href="#">Flyers</a>
                            </li>
                        </ul><!-- /.sidebar__categories-list -->
                    </div><!-- /.sidebar__single -->
                    <div class="sidebar__single sidebar__featured-post">
                        <img src="images/blog/feature-1-1.jpg" alt="Awesome Image" />
                        <h3 class="sidebar__featured-post__title"><a href="#">Featured Post</a></h3>
                        <p class="sidebar__featured-post__text">Lorem Ipsum is simply dummy text of the rinting and typesetting been the industry standard.</p>
                    </div><!-- /.sidebar__single -->
                </div><!-- /.sidebar -->
            </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section><!-- /.blog-details -->