<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <link rel="stylesheet" href="{{ asset('assets/fonts/stylesheet.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/solaiman-lipi/font.css') }}">
    <!-- Icons -->
    <link rel="stylesheet" href="{{ asset('assets/vendor/nucleo/css/nucleo.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('assets/vendor/@fortawesome/fontawesome-free/css/all.min.css') }}"
        type="text/css">
    <!-- Page plugins -->
    <link rel="stylesheet" href="{{ asset('assets/vendor/fullcalendar/dist/fullcalendar.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendor/sweetalert2/dist/sweetalert2.min.css') }}">

    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap-select.min.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('assets/css/jquery-confirm.min.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('assets/css/dashboard.css') }}" type="text/css">
    <link rel="stylesheet" href="{{ asset('assets/css/custom.css') }}" type="text/css">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/css/bootstrap-select.min.css"
        type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/0.8.2/css/flag-icon.min.css"
        type="text/css">
    {{-- <link rel="stylesheet" href="{{asset('assets/css/flag-icons.min.css')}}" type="text/css"> --}}
    <link rel="stylesheet" href="{{asset('css/notify.min.css')}}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/nprogress/0.2.0/nprogress.min.css" integrity="sha512-42kB9yDlYiCEfx2xVwq0q7hT4uf26FUgSIZBK8uiaEnTdShXjwr8Ip1V4xGJMg3mHkUt9nNuTDxunHF0/EgxLQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    @stack('styles')

</head>

<body>

    @include('includes.navbar')
    <div class="main-content" id="panel">
        @include('includes.header')
        @include('includes.page-header')
        <div class="container-fluid mt--6">
            @yield('content')
        </div>
        <script src="{{ asset('assets/vendor/jquery/dist/jquery.min.js') }}"></script>
        <script src="{{ asset('assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js') }}"></script>

        <script src="{{ asset('assets/vendor/js-cookie/js.cookie.js') }}"></script>
        <script src="{{ asset('assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js') }}"></script>
        <script src="{{ asset('assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js') }}"></script>

        <script src="{{ asset('assets/js/bootstrap-select.min.js') }}"></script>
        <script src="{{ asset('assets/js/jquery-confirm.min.js') }}"></script>
        <script src="{{ asset('assets/js/dashboard.js') }}"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/js/bootstrap-select.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/nprogress/0.2.0/nprogress.min.js" integrity="sha512-bUg5gaqBVaXIJNuebamJ6uex//mjxPk8kljQTdM1SwkNrQD7pjS+PerntUSD+QRWPNJ0tq54/x4zRV8bLrLhZg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        @stack('scripts')
        <script>
let currentUrlWithoutQueryStrings = window.location.protocol + "//" + window.location.host + window.location.pathname;
            $('.language-switcher').on('change', function(){
                console.log($(this).val());
                window.location.href =currentUrlWithoutQueryStrings + '?lang='+$(this).val();
            });

$(document).ready(function() {
    // Hide the preloader initially
    NProgress.done();

    // Show the preloader when an AJAX request starts
    $(document).ajaxStart(function() {
        NProgress.start();
    });

    // Hide the preloader when all AJAX requests are complete
    $(document).ajaxStop(function() {
        NProgress.done();
    });

    // Make your AJAX requests here
});

        </script>
</body>

</html>
