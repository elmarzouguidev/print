<section class="contact-two thm-gray-bg">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-lg-6 d-flex">
                <div class="my-auto">
                    <div class="block-title">
                        <p class="block-title__tag-line ">Contact Us</p>
                        <h2 class="block-title__title">Send a Message</h2>
                    </div><!-- /.block-title -->
                    <form action="http://ashik.templatepath.net/dexen-html-files/inc/sendemail.php" class="contact-two__form">
                        <input type="text" name="looking-for" placeholder="What you’re looking?">
                        <input type="text" name="name" placeholder="Your name">
                        <input type="text" name="email" placeholder="Email address">
                        <textarea name="message" placeholder="Write message"></textarea>
                        <button type="submit" class="contact-two__button thm-btn">Send Message</button>
                    </form>
                </div><!-- /.my-auto -->
            </div><!-- /.col-lg-6 -->
            <div class="col-lg-6">
                <div class="contact-two__image-block">
                    <img class="" src="{{Voyager::image($deal->image)}}" alt="{{$deal->title}}" />
                </div><!-- /.contact-two__image-block -->
            </div><!-- /.col-lg-6 -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section><!-- /.contact-two -->
