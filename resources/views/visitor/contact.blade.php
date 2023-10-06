@extends('layouts.main')


@section('content')
<div class="beta-map">
		
    <div class="abs-fullwidth beta-map wow flipInX"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d1618.8014533377982!2d108.72233780001713!3d15.203290155474345!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1686630203674!5m2!1svi!2s" 
    
        ></iframe></div>
</div>
@if (session('message'))
<div class="alert alert-success">
    {{ session('message') }}
</div>
@endif

<div class="container">
    <div id="content" class="space-top-none">
        
        <div class="space50">&nbsp;</div>
        <div class="row">
            <div class="col-sm-8">
                <h2>Liên Hệ</h2>
                <div class="space20">&nbsp;</div>
                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit ani m id est laborum.</p>
                <div class="space20">&nbsp;</div>
                <form action="#" method="post" class="contact-form">	
                    @csrf
                    @if (Auth::check())
                    <div class="form-block">
                        <input name="name" type="text" value="{{Auth::user()->full_name}}" placeholder="Your Name (required)">
                    </div>
                    <div class="form-block">
                        <input name="email" type="email" value="{{Auth::user()->email}}" placeholder="Your Email (required)">
                    </div>
                    <div class="form-block">
                        <input name="subject" type="text" placeholder="Subject">
                    </div>
                    <div class="form-block">
                        <textarea name="message" placeholder="Your Message"></textarea>
                    </div>
                    <div class="form-block">
                        <button type="submit" class="beta-btn primary">Send Message <i class="fa fa-chevron-right"></i></button>
                    </div>
                    @else
                    <div class="form-block">
                        <input name="name" type="text" placeholder="Your Name (required)">
                    </div>
                    <div class="form-block">
                        <input name="email" type="email" placeholder="Your Email (required)">
                    </div>
                    <div class="form-block">
                        <input name="subject" type="text" placeholder="Subject">
                    </div>
                    <div class="form-block">
                        <textarea name="message" placeholder="Your Message"></textarea>
                    </div>
                    <div class="form-block">
                        <button type="submit" class="beta-btn primary">Send Message <i class="fa fa-chevron-right"></i></button>
                    </div>
                    @endif
                </form>
            </div>
            <div class="col-sm-4">
                <h2>Thông tin liên lạc</h2>
                <div class="space20">&nbsp;</div>

                <h6 class="contact-title">Địa chỉ</h6>
                <p>
                    95e Tô Hiến Thành,<br>
                    Phước Mỹ, Sơn Trà , <br>
                   Đà Nẵng
                </p>
                <div class="space20">&nbsp;</div>
                <h6 class="contact-title">Business Enquiries</h6>
                <p>
                    Doloremque laudantium, totam rem aperiam, <br>
                    inventore veritatio beatae. <br>
                    <a href="mailto:biz@betadesign.com">biz@betadesign.com</a>
                </p>
                <div class="space20">&nbsp;</div>
                <h6 class="contact-title">Employment</h6>
                <p>
                    We’re always looking for talented persons to <br>
                    join our team. <br>
                    <a href="hr@betadesign.com">hr@betadesign.com</a>
                </p>
            </div>
        </div>
    </div> <!-- #content -->
</div> <!-- .container -->

@endsection
@section('js')

<script src="/source//source/assets/dest/js/custom2.js"></script>
<script>
$(document).ready(function($) {    
    $(window).scroll(function(){
        if($(this).scrollTop()>150){
        $(".header-bottom").addClass('fixNav')
        }else{
            $(".header-bottom").removeClass('fixNav')
        }}
    )
})
</script>
<script>
    $(document).ready(function(){
        var active = location.search;
        $('#select-filter option[value="'+active+'"]').attr('selected','selected');
    })

    $('.select-filter').change(function(){
        var value = $(this).find(':selected').val();
        // alert(value);

        if(value !=0) {
            var url = value;
            window.location.replace(url)

        }
        else {
            alert('hãy lọc')
        }


    })

</script>
@endsection
