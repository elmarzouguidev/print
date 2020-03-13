<header class="site-header header-one">
    <div class="top-bar">
        <div class="container">
            <div class="social-block">
                <a href="{{setting('all-setting.facebook')}}"><i class="fa fa-facebook-f"></i></a>
                <a href="{{setting('all-setting.twitter')}}"><i class="fa fa-twitter"></i></a>
                <a href="{{setting('all-setting.youtube')}}"><i class="fa fa-youtube-play"></i></a>
                <a href="{{setting('all-setting.pinterest')}}"><i class="fa fa-pinterest"></i></a>
            </div><!-- /.social-block 7E7F82 -->
            <div class="logo-block">
            <a href="{{route('home')}}"><img src="{{asset('images/resources/bgo.png')}}" alt="HayMacPrint" /></a>
            </div><!-- /.logo-block -->
            <div class="right-block">
                <a href="#"><i class="fa fa-envelope"></i>{{setting('all-setting.email')}}</a>
                <a href="#"><i class="fa fa-phone-square"></i>{{setting('all-setting.tele')}}</a>
            </div><!-- /.right-block -->
        </div><!-- /.container -->
    </div><!-- /.top-bar -->
    <nav class="navbar navbar-expand-lg navbar-light header-navigation stricky">
        <div class="container clearfix">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="logo-box clearfix">
                <button class="menu-toggler" data-target="#main-nav-bar">
                    <span class="fa fa-bars"></span>
                </button>
            </div><!-- /.logo-box -->
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="main-navigation" id="main-nav-bar">
                <ul class="navigation-box">

                    <li class=" current ">
                        <a href="{{route('home')}}">ACCUEIL</a>
                    </li>
                    {{-- <li><a href="{{route('about')}}">About Us</a></li>--}}
                    <li><a href="{{route('promos')}}">DEALS</a></li>
                    <li><a href="{{route('products')}}">PRODUITS</a></li>
                    <li><a href="{{route('portfolio')}}">PORTFOLIO</a></li>
                    <li><a href="{{route('contact')}}">CONTACTEZ-NOUS</a></li>
                    <ul class="sub-menu">
                    </ul>
                </ul>
            </div><!-- /.navbar-collapse -->
            <div class="right-side-box">
                <div class="header__social-block">
                    <a href="{{setting('all-setting.facebook')}}"><i class="fa fa-facebook-f"></i></a>
                    <a href="{{setting('all-setting.twitter')}}"><i class="fa fa-twitter"></i></a>
                    <a href="{{setting('all-setting.youtube')}}"><i class="fa fa-youtube-play"></i></a>
                    <a href="{{setting('all-setting.pinterest')}}"><i class="fa fa-pinterest"></i></a>
                </div><!-- /.social-block -->
            </div><!-- /.right-side-box -->
        </div>
        <!-- /.container -->
    </nav>
</header><!-- /.site-header header-one -->
