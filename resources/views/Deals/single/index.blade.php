@extends('layouts.app')

@section('content')

    @include('Deals.single.top')
   {{--@include('Deals.single.section')--}} 
    @include('Deals.single.topPromo')
    @include('Deals.single.other')

@endsection
