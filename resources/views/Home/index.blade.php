@extends('layouts.app')

@section('content')

    @include('Home.sliderA')
    @include('Home.about')
    @include('Home.ourservice')
    @include('Home.service')
    @include('Home.testimonial')
    @include('Home.section-a')
    @include('Home.faq')
    @include('Home.promo')
    @include('Home.project')
    {{--@include('Home.contact')--}}
    @include('Home.blog')

@endsection
