@extends('layouts.main')
@section('title', 'Librariant')

@section('content')
   <div class="m-6">
      <div class="row align-items-center mx-4">
         <div class="col-md-12 col-lg-12 col-xl-6 order-xl-last mb-5" data-aos="fade-left" data-aos-duration="1000">
            <img src="{{ asset('images/Librariant.jpg') }}" alt="Librariant" class="mw-100 h-auto" width="550px" style="border-radius: 80% 50% 40% 60%;">
         </div>
         <div class="col-md-12 col-lg-12 col-xl-6" data-aos="fade-right" data-aos-duration="1000">
            <h1 class="fw-bold"><span class="text-highlight">Empowering</span> minds through the fusion of <span class="text-underline-wavy">knowledge</span> and <span class="text-underline-wavy">readers.</span></h1>
            <p class="text-secondary py-3">Tại Librariant, chúng tôi tin vào sức mạnh của sách và thông tin trong việc thay đổi cuộc sống. Thư viện của chúng tôi không chỉ là một tòa nhà chứa đầy kệ;
               đó là một trung tâm sôi động, nơi các ý tưởng nảy nở, trí tưởng tượng bay cao và các kết nối được tạo ra. Bước qua cánh cửa của chúng tôi, bạn sẽ khám phá một thế giới đầy tiềm năng.</p>
            <h6 class="my-2 bg-body-secondary rounded p-2 w-70">🌐 Tự hào phục vụ cộng đồng của chúng tôi trong 20 năm.</h6>
            <h6 class="my-2 bg-body-secondary rounded p-2 w-70">🏅 Được công nhận về sự xuất sắc trong dịch vụ thư viện.</h6>
            <h6 class="my-2 bg-body-secondary rounded p-2 w-70">🏆 Thư viện từng đoạt giải thưởng truyền cảm hứng cho nhiều thế hệ.</h6>
         </div>
         
      </div>
   </div>
   <div class="m-6">
      <h2 class="text-center pt-5 pb-4" data-aos="fade-down" data-aos-duration="1000">📜 Our Mission</h2>
      <div class="row px-4">
         <div class="col-md-4 text-left my-2" data-aos="fade-right" data-aos-delay="100" data-aos-duration="1000">
            <div class="d-flex flex-column h-100 bg-body-tertiary rounded p-3">
               <h1 class="py-3"><span class="alert alert-success p-2">📚</span></h1>
               <h4>Access to Knowledge</h4>
               <p>Provide an open and equitable access to a wide range of information resources, including books, digital media, and educational materials. We strive to be a trusted source of knowledge for our community.</p>
            </div>
        </div>
        <div class="col-md-4 text-left my-2" data-aos="fade-up" data-aos-delay="200" data-aos-duration="1000">
            <div class="d-flex flex-column h-100 bg-body-tertiary rounded p-3">
               <h1 class="py-3"><span class="alert alert-primary p-2">🌏</span></h1>
               <h4>Inclusivity and Diversity</h4>
               <p>Our library is a welcoming, inclusive space for all, dedicated to diverse collections and an environment where everyone feels valued and represented.</p>
            </div>
        </div>
        <div class="col-md-4 text-left my-2" data-aos="fade-left" data-aos-delay="300" data-aos-duration="1000">
            <div class="d-flex flex-column h-100 bg-body-tertiary rounded p-3">
               <h1 class="py-3"><span class="alert alert-warning p-2">💡</span></h1>
               <h4>Innovation and Adaptability</h4>
               <p>As the world changes, so does the role of libraries. We embrace technological advancements and continually seek innovative ways to serve our patrons.</p>
            </div>
        </div>
      </div>
   </div>
   <div class="m-6">
      <div class="row align-items-center mx-4 rounded">
         <div class="col-md-6 library-profile-background" data-aos="fade-right" data-aos-duration="1000">
            <img src="{{ asset('images/Library Profile.png') }}" alt="Library Profile" class="mw-100 h-auto" width="550px" height="550px">
         </div>
         <div class="col-md-6" data-aos="fade-left" data-aos-duration="1000">
            <h6>📚 Embark on a literary journey, fueled by curiosity's spark.</h6>
            <h1 class="fw-bold">Discover a <span class="text-highlight">realm of knowledge</span> and <span class="text-underline-wavy">captivating stories.</span></h1>
            <h6 class="mt-5 mb-3 bg-body-tertiary rounded p-2">⌚ Monday - Saturday, from 9:00 a.m. to 6:00 p.m.</h6>
            <h6 class="my-3 bg-body-tertiary rounded p-2">📍 Education Street No.10A</h6>
            <h6 class="my-3 bg-body-tertiary rounded p-2">☎️ +62 811-2345-6789</h6>
            <h6 class="my-3 bg-body-tertiary rounded p-2">📧 librariant.edu@gmail.com</h6>
         </div>
      </div>
   </div>
   @include('layouts.footer')
@endsection