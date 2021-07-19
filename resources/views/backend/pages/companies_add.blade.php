@extends('backend.layouts.app')

@section('title')
Şirkətlər Əlavə Etmə Səhfəsi
@endsection

@section('css')


@endsection

@section('content')

<div class="card">
    <div class="card-header">
        <h3 class="card-title">{{__("language.companyaddh3")}}</h3>

    
    </div>
    <div class="card-body">
        @if ($errors->any())
            <div class="alert alert-danger" id="errorMessage">
                @foreach ($errors->all() as $error)
                    <li>{{$error}}</li>
                @endforeach
            </div>
        @endif

      <form action="{{route('company.store')}}" method="post" enctype="multipart/form-data">
          @csrf
            <div class="mb-3">
                <label for="name">{{__("language.companyaddname")}}</label>
                <input type="text" class="form-control" id="name" name="name" value="{{old('name')}}" placeholder="{{__("language.companyaddnameph")}}">
            </div>
            <div class="mb-3">
                <label for="email">{{__("language.companyaddemail")}}</label>
                <input type="email" class="form-control" id="email" name="email" value="{{old('email')}}" placeholder="{{__("language.companyaddemailph")}}">
            </div>
            <div class="custom-file mb-3">
                
                <input type="file" name="image" class="custom-file-input" id="customFile">
                <label class="custom-file-label" for="customFile">{{__("language.companyaddfileph")}}</label>
            </div>
            <div class="mb-3">
                <label for="website">{{__("language.companyaddwebsite")}}</label>
                <input type="text" class="form-control" id="website" name="website" value="{{old('website')}}" placeholder="{{__("language.companyaddwebsiteph")}}">
            </div>

            <button type="submit" class="btn btn-success">{{__("language.companyaddbtn")}}</button>
      </form>
      
    </div>
    
  </div>
    
@endsection

@section('js')
<script>
    setInterval(() => {
        $('#errorMessage').fadeOut();
    }, 2000);
</script>

@endsection